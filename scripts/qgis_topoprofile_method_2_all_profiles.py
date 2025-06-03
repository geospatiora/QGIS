import matplotlib.pyplot as plt
from qgis.core import (
    QgsProject, QgsPointXY, QgsFeature, QgsFields, QgsField,
    QgsGeometry, QgsVectorLayer, QgsDistanceArea,
    QgsFeatureRequest, QgsVectorDataProvider, QgsVectorFileWriter
)
from PyQt5.QtCore import QVariant

# Step 1: Define parameters
transects_name = "transects_300m"
dem_name = "detrended_dem"
spacing = 5

# Step 2: Load QGIS layers
transects_list = QgsProject.instance().mapLayersByName(transects_name)
dem_list = QgsProject.instance().mapLayersByName(dem_name)

if not transects_list:
    raise Exception(f"Layer '{transects_name}' not found in QGIS.")
if not dem_list:
    raise Exception(f"Layer '{dem_name}' not found in QGIS.")

transects = transects_list[0]
dem = dem_list[0]
provider = dem.dataProvider()
crs = transects.crs()

# Step 3: Create output points Layer
out_fields = QgsFields()
out_fields.append(QgsField("ID_LINE", QVariant.Int))
out_fields.append(QgsField("DIST", QVariant.Double))
out_fields.append(QgsField("Z", QVariant.Double))
out_fields.append(QgsField("X", QVariant.Double))
out_fields.append(QgsField("Y", QVariant.Double))

mem_layer = QgsVectorLayer("Point?crs=" + crs.authid(), "All_Transects_Points", "memory")
mem_provider = mem_layer.dataProvider()
mem_provider.addAttributes(out_fields)
mem_layer.updateFields()

d = QgsDistanceArea()
d.setSourceCrs(crs, QgsProject.instance().transformContext())

# Step 5: Store values for plotting
graph_dist = []
graph_elev = []

# Step 6: Process all transects
for feat in transects.getFeatures():
    geom = feat.geometry()
    length = geom.length()
    cur_dist = 0

    while cur_dist <= length:
        pt = geom.interpolate(cur_dist).asPoint()
        elev = provider.sample(QgsPointXY(pt), 1)[0]

        if elev is not None:
            new_feat = QgsFeature()
            new_feat.setGeometry(QgsGeometry.fromPointXY(QgsPointXY(pt)))

            attrs = [
                feat.id(),          # ID_LINE
                round(cur_dist, 2), # DIST
                round(elev, 2),     # Z
                pt.x(),             # X
                pt.y()              # Y
            ]
            new_feat.setAttributes(attrs)
            mem_provider.addFeature(new_feat)

        cur_dist += spacing

mem_layer.updateExtents()
QgsProject.instance().addMapLayer(mem_layer)

# Step 7: Export layer to GeoPackage
output_gpkg_path = "D:/qgis/output/transects_profiles.gpkg"
options = QgsVectorFileWriter.SaveVectorOptions()
options.driverName = "GPKG"
options.fileEncoding = "UTF-8"
options.layerName = "All_Transects_Points"

error = QgsVectorFileWriter.writeAsVectorFormatV2(mem_layer, output_gpkg_path, QgsProject.instance().transformContext(), options)

if error[0] == QgsVectorFileWriter.NoError:
    print(f"GeoPackage saved successfully at: {output_gpkg_path}")
else:
    print(f"Error saving GeoPackage: {error}")

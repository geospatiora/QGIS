import matplotlib.pyplot as plt
from qgis.core import (
    QgsProject, QgsPointXY, QgsFeature, QgsFields, QgsField,
    QgsGeometry, QgsVectorLayer, QgsDistanceArea,
    QgsFeatureRequest, QgsVectorDataProvider, QgsVectorFileWriter
)
from PyQt5.QtCore import QVariant
from PyQt5.QtWidgets import QInputDialog

# Step 1: Define parameters
transects_name = "transects_300m"
dem_name = "detrended_dem"
spacing = 5  # meters between sample points

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

# Step 3: Get list of available transect IDs
ids = [str(f.id()) for f in transects.getFeatures()]
id_selected, ok = QInputDialog.getItem(None, "Select a transect", "Choose ID:", ids, editable=False)

if not ok:
    print("No transect selected.")
    exit()

id_selected = int(id_selected)

# Step 4: Create output points Layer
out_fields = QgsFields()
out_fields.append(QgsField("ID_LINE", QVariant.Int))
out_fields.append(QgsField("DIST", QVariant.Double))
out_fields.append(QgsField("Z", QVariant.Double))
out_fields.append(QgsField("X", QVariant.Double))
out_fields.append(QgsField("Y", QVariant.Double))

mem_layer = QgsVectorLayer("Point?crs=" + crs.authid(), f"Transect_{id_selected}_Points", "memory")
mem_provider = mem_layer.dataProvider()
mem_provider.addAttributes(out_fields)
mem_layer.updateFields()

d = QgsDistanceArea()
d.setSourceCrs(crs, QgsProject.instance().transformContext())

# Step 5: Store values for plotting and geopackage export
graph_dist = []
graph_elev = []

# Step 6: Process the selected Transect
request = QgsFeatureRequest(id_selected)
for feat in transects.getFeatures(request):
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
                feat.id(),
                round(cur_dist, 2),
                round(elev, 2),
                pt.x(),
                pt.y()
            ]
            new_feat.setAttributes(attrs)
            mem_provider.addFeature(new_feat)

            graph_dist.append(cur_dist)
            graph_elev.append(elev)

        cur_dist += spacing

mem_layer.updateExtents()
QgsProject.instance().addMapLayer(mem_layer)

# Step 7: Export entire memory layer to GeoPackage
output_gpkg_path = "D:/qgis/output/transects_profiles.gpkg"
options = QgsVectorFileWriter.SaveVectorOptions()
options.driverName = "GPKG"
options.fileEncoding = "UTF-8"
options.layerName = f"Transect_{id_selected}_Points"

error = QgsVectorFileWriter.writeAsVectorFormatV2(mem_layer, output_gpkg_path, QgsProject.instance().transformContext(), options)

if error[0] == QgsVectorFileWriter.NoError:
    print(f"GeoPackage saved successfully at: {output_gpkg_path}")
else:
    print(f"Error saving GeoPackage: {error}")

# Step 8: Plot the profile
plt.figure(figsize=(8, 4))
plt.plot(graph_dist, graph_elev, color='darkorange', linewidth=2)
plt.xlabel("Distance along transect (m)")
plt.ylabel("Elevation (m)")
plt.ylim(-1, 10)
plt.title(f"Topographic Profile — Transect ID {id_selected}")
plt.grid(True)
plt.tight_layout()
plt.show()

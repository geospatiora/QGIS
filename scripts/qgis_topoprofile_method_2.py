# ---------------------------------------------------------------------------------------------------------
# Link of the YouTube Video: [here]
# Good luck! Subscribe: https://www.youtube.com/@sarah-gis-geospatial
# ---------------------------------------------------------------------------------------------------------

import matplotlib.pyplot as plt
from qgis.core import (
    QgsProject, QgsPointXY, QgsFeature, QgsFields, QgsField,
    QgsGeometry, QgsVectorLayer, QgsDistanceArea,
    QgsWkbTypes, QgsVectorDataProvider, QgsCoordinateReferenceSystem, QgsFeatureRequest
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

# Step 4: Create output point Layer
out_fields = QgsFields()
out_fields.append(QgsField("ID_LINE", QVariant.Int))
out_fields.append(QgsField("DIST", QVariant.Double))
out_fields.append(QgsField("Z", QVariant.Double))

mem_layer = QgsVectorLayer("Point?crs=" + crs.authid(), f"Transect_{id_selected}_Points", "memory")
mem_layer.dataProvider().addAttributes(out_fields)
mem_layer.updateFields()

d = QgsDistanceArea()
d.setSourceCrs(crs, QgsProject.instance().transformContext())

# Step 5: Store values for plottingg
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
            f = QgsFeature()
            f.setGeometry(QgsGeometry.fromPointXY(QgsPointXY(pt)))
            f.setAttributes([feat.id(), round(cur_dist, 2), round(elev, 2)])
            mem_layer.dataProvider().addFeature(f)

            graph_dist.append(cur_dist)
            graph_elev.append(elev)

        cur_dist += spacing

# Step 7: Add layer
QgsProject.instance().addMapLayer(mem_layer)

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


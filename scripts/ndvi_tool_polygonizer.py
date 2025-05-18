import os
import processing
from qgis.core import QgsProject, QgsField
from PyQt5.QtCore import QVariant

# Step 1. Define paths
input_raster_path = r"D:\qgis\rawdata\test_ndvi.tif"
output_dir = r"D:\qgis\output"
thresholded_raster = os.path.join(output_dir, "thresholded_ndvi.tif")
output_vector = os.path.join(output_dir, "ndvi_polygons_gt_0_5.shp")

# Step 2. Create output folder if needed
if not os.path.exists(output_dir):
    os.makedirs(output_dir)
    print(f"Folder created: {output_dir}")
else:
    print(f"Folder already exists: {output_dir}")

# Step 3. Delete existing files
for f in [thresholded_raster, output_vector]:
    if os.path.exists(f):
        try:
            os.remove(f)
            print(f"File deleted: {f}")
        except Exception as e:
            print(f"Error deleting {f}: {e}")

# Step 4. Thresholding the raster: keep only pixels > 0.5
print("Filtering the raster (> 0.5)...")
try:
    # Apply threshold to keep only pixels > 0.5
    params_threshold = {
        'INPUT_A': input_raster_path,
        'BAND_A': 1,
        'FORMULA': 'A*(A > 0.5)',
        'NO_DATA': -9999, # Define -9999 as NoData for pixels < 0.5
        'RTYPE': 5,
        'EXTRA': '',
        'OUTPUT': thresholded_raster
    }
    processing.run("gdal:rastercalculator", params_threshold)
    print(f"Filtered raster saved: {thresholded_raster}")
except Exception as e:
    print(f"Error during raster thresholding: {e}")

# Step 5. Polygonize the filtered raster
print("Running polygonization...")
try:
    params_polygonize = {
        'INPUT': thresholded_raster,
        'BAND': 1,
        'FIELD': 'value',
        'EIGHT_CONNECTEDNESS': False,
        'OUTPUT': output_vector
    }
    processing.run("gdal:polygonize", params_polygonize)
    print(f"Shapefile generated: {output_vector}")
except Exception as e:
    print(f"Error during polygonization: {e}")

# === 6. Filtering in QGIS (Removing polygons with values equal to 0) ===
print("Removing polygons with values equal to 0...")
try:
    # Load the vector layer
    layer = QgsProject.instance().addMapLayer(QgsVectorLayer(output_vector, "NDVI > 0.5", "ogr"))

    # Filter polygons with value = 0
    if layer.isValid():
        # Apply a filter query to keep only polygons with value > 0
        layer.setSubsetString('"value" > 0')

        print(f"Polygons with values > 0 displayed.")
    else:
        print(f"Error: The vector layer is not valid.")
except Exception as e:
    print(f"Error during polygon filtering: {e}")

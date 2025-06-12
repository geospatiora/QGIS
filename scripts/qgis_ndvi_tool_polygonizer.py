"""
Hello!

This shared script processes a raster dataset (NDVI) by performing the following steps:

1. Defines input and output paths for raster and vector files.
2. Creates an output directory if it doesn't exist.
3. Deletes any existing files at the output locations to ensure the new data is written without conflicts.
4. Applies a threshold to the input raster to retain only the pixels with values greater than 0.5. This operation generates a new raster file.
5. Polygonizes the thresholded raster, converting the raster data into vector polygons. The output is a shapefile.
6. Loads the generated shapefile into QGIS and filters out any polygons with a value of 0 (non-relevant or background polygons), keeping only those with a value greater than 0.

Usage:
- Update the `input_raster_path` with the path to your raster dataset (e.g., an NDVI raster).
- The output files (thresholded raster and shapefile) will be saved to the directory specified by `output_dir`.

This script requires QGIS and its processing framework to run.

Dependencies:
- QGIS
- PyQt5
- GDAL

Ensure that you have the required libraries installed in your QGIS environment before running this script.

Give it a try!

My GIS YouTube Channel: https://www.youtube.com/@geospatiora
"""

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

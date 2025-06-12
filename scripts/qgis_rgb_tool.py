"""
Welcome!

This Python script for QGIS automatically generates an RGB composite image from Sentinel-2 single-band files (Red, Green, Blue).
It extracts the acquisition date from the filename, merges the bands into a single TIFF file, and adds the resulting composite to the QGIS project.

Make sure the JP2 file paths are correctly set and that the Processing plugin is enabled in QGIS.

Subscribe to my YT Channel for more QGIS Tutorials & Geospatial content!
Link: https://www.youtube.com/@geospatiora
"""

import processing
from qgis.core import QgsRasterLayer, QgsProject
import re

# Paths to the single-band TIFF files (Red, Green, Blue)
red_band_path = r"D:\qgis\rawdata\S2C_MSIL2A_20250518T102621_N0511_R108_T31TFJ_20250518T143414.SAFE\GRANULE\L2A_T31TFJ_A003653_20250518T103814\IMG_DATA\R10m\T31TFJ_20250518T102621_B04_10m.jp2"
green_band_path = r"D:\qgis\rawdata\S2C_MSIL2A_20250518T102621_N0511_R108_T31TFJ_20250518T143414.SAFE\GRANULE\L2A_T31TFJ_A003653_20250518T103814\IMG_DATA\R10m\T31TFJ_20250518T102621_B03_10m.jp2"
blue_band_path = r"D:\qgis\rawdata\S2C_MSIL2A_20250518T102621_N0511_R108_T31TFJ_20250518T143414.SAFE\GRANULE\L2A_T31TFJ_A003653_20250518T103814\IMG_DATA\R10m\T31TFJ_20250518T102621_B02_10m.jp2"

# Extract date from one of the input file names (Dateformat YYYYMMDD)
date_match = re.search(r'(\d{8})', red_band_path)
if date_match:
    raster_date = date_match.group(1)  # Extract the date as a string in YYYYMMDD format
else:
    print("Date extraction from the filename failed.")
    raster_date = "unknown_date"

# Output path for the final raster file with the date in the name
output_raster = r"D:\qgis\output\rgb_composite_" + raster_date + ".tif"

# Check if the raster layers are valid
red_layer = QgsRasterLayer(red_band_path, "Red Band")
green_layer = QgsRasterLayer(green_band_path, "Green Band")
blue_layer = QgsRasterLayer(blue_band_path, "Blue Band")

if not red_layer.isValid() or not green_layer.isValid() or not blue_layer.isValid():
    print("One or more raster layers are invalid.")
else:
    # Merge the bands into a single RGB composite raster
    params = {
        'INPUT': [red_band_path, green_band_path, blue_band_path],
        'RESOLUTION': 0,
        'SEPARATE': True,
        'OUTPUT': output_raster
    }

    # Run the "gdal:merge" algorithm with the correct inputs
    try:
        processing.run("gdal:merge", params)
        print(f"The composite raster has been successfully created as {output_raster}.")

        # Load the created composite raster into QGIS without adding the individual bands
        rgb_layer = QgsRasterLayer(output_raster, f"RGB Composite {raster_date}")
        if rgb_layer.isValid():
            QgsProject.instance().addMapLayer(rgb_layer)
            print(f"The RGB raster '{rgb_layer.name()}' has been added to the project.")
        else:
            print("The composite raster could not be loaded.")
    
    except Exception as e:
        print(f"Error during the band merging: {e}")
      

import os
import time
import processing
from qgis.core import QgsProject

# Step 1: Define output folder and output file path
output_dir = r"D:\qgis\output"
output_file = os.path.join(output_dir, "intersection_result_temp.shp")

# Step 2: Check if the output folder exists; if not, create it
if not os.path.exists(output_dir):
    try:
        os.makedirs(output_dir)
        print(f"Folder '{output_dir}' created successfully.")
    except Exception as e:
        print(f"Error while creating the folder: {e}")
else:
    print(f"The folder '{output_dir}' already exists.")

# Step 3: Check if the output file already exists and try to delete it after a delay
if os.path.exists(output_file):
    print(f"The file '{output_file}' already exists. Attempting to delete it...")
    time.sleep(5)
    try:
        os.remove(output_file)  # Delete the existing file
        print(f"The file '{output_file}' was deleted.")
    except Exception as e:
        print(f"Error while deleting the file '{output_file}': {e}")

# Step 4: Define parameters for the intersection algorithm
# Make sure that 'communes' and 'vegetation' match the exact names of your layers in QGIS
params = {
    'INPUT': QgsProject.instance().mapLayersByName("communes")[0],
    'OVERLAY': QgsProject.instance().mapLayersByName("vegetation")[0],
    'OUTPUT': output_file
}

# Step 5: Run the intersection algorithm
try:
    print("Running intersection algorithm...")
    result = processing.run("native:intersection", params)
    print(f"Output file created: {output_file}")

    # Add the output layer to the QGIS interface
    output_layer = iface.addVectorLayer(output_file, "Intersection Result", "ogr")

    if not output_layer.isValid():
        print("Error: The layer could not be added.")
    else:
        print("The output layer was successfully added to the map.")
except Exception as e:
    print(f"Error during the intersection process: {e}")

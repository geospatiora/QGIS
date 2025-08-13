# ---------------------------------------------------------------------------------------------------------
# Good luck! Subscribe: https://www.youtube.com/@geospatiora
# ---------------------------------------------------------------------------------------------------------

import csv
import matplotlib.pyplot as plt
from qgis.PyQt.QtWidgets import QFileDialog, QInputDialog

# Step 1: CSV file selection
csv_file, _ = QFileDialog.getOpenFileName(
    None, "Select CSV file", "", "CSV Files (*.csv)"
)

if not csv_file:
    print("No file selected.")
else:
    all_rows = []
    id_lines = set()

    # Step 2. Read entire file and collect unique ID_LINE values (select only one profile)
    with open(csv_file, newline='', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            all_rows.append(row)
            id_lines.add(row['ID_LINE'])

    # Step 3: Select a specific ID_LINE
    id_line_selected, ok = QInputDialog.getItem(
        None,
        "Select a transect",
        "Choose an ID_LINE to display:",
        sorted(id_lines),
        editable=False
    )

    if ok and id_line_selected:
        distance_values = []
        elevation_values = []

        # Step 4. Filter rows corresponding to the chosen ID_LINE
        for row in all_rows:
            if row['ID_LINE'] == id_line_selected:
                try:
                    distance_values.append(float(row['DISTANCE']))
                    elevation_values.append(float(row['Z']))
                except ValueError:
                    print("Skipped line (invalid value):", row)

        # Step 5. Display the profile (with fixed elevation scale)
        if distance_values and elevation_values:
            plt.figure(figsize=(8, 4))
            plt.plot(distance_values, elevation_values, color='darkorange', linewidth=1.8)
            plt.ylim(-1, 50)
            plt.xlabel("Distance along transect (m)")
            plt.ylabel("Elevation (m)")
            plt.title(f"Topographic Profile — ID_LINE {id_line_selected}")
            plt.grid(True)
            plt.tight_layout()
            plt.show()
        else:
            print("No valid data found for this transect.")
    else:
        print("No ID selected.")

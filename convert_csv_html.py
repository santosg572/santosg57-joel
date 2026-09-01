import pandas as pd

file = 'BASE_2708_V1'

# Load the CSV file

df = pd.read_csv(file + ".csv")

# Export to HTML file
df.to_html(file + ".html", index=False)

print(file + ".html")

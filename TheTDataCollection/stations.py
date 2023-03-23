from bs4 import BeautifulSoup
import csv

# Open the HTML file
with open('data.html') as f:
    soup = BeautifulSoup(f, 'html.parser')

# Extract station data
station_table = soup.find('table', {'border': '1'})
station_data = []
for row in station_table.find_all('tr'):
    cols = row.find_all('td')
    if len(cols) == 2:
        station_data.append([cols[1].text.strip(), cols[0].text.strip()])

# Write station data to CSV file
with open('stations2.csv', 'w', newline='') as f:
    writer = csv.writer(f)
    # writer.writerow(['#', 'Station Names'])
    writer.writerows(station_data)



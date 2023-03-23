from bs4 import BeautifulSoup
import csv

# Open the HTML file
with open('data.html') as f:
    soup = BeautifulSoup(f, 'html.parser')
    
    
# Extract connection data
connection_table = soup.find_all('table', {'border': '1'})[1]
connection_data = []
for row in connection_table.find_all('tr'):
    cols = row.find_all('td')
    if len(cols) == 5:
        connection_data.append([cols[0].text.strip(), cols[1].text.strip(),
                                cols[2].text.strip(), cols[3].text.strip(),
                                cols[4].text.strip()])

# Write connection data to CSV file
with open('connections1.csv', 'w', newline='') as f:
    writer = csv.writer(f)
    # writer.writerow(['From', 'To', 'Line', 'Minutes'])
    writer.writerows(connection_data)
import re
from datetime import datetime
import csv

def preprocess(filename):
    input_format = '%Y%m%d'
    output_format = '%Y-%m-%d'

    with open(filename, 'r') as f:
        lines = f.readlines()

    lines = [line.strip() for line in lines]
    pattern = r'.*Near-Surface Air Temperature$'
    matches = [line.strip() for line in lines if re.match(pattern, line)]
    index = lines.index(matches[0])

    data = lines[index+1:]

    csvdata = []
    csvdata.append(['Time', 'Surface temperature daily Celesius ERA5'])
    for line in data:
        temp = line.split()
        dt = datetime.strptime(temp[0], input_format)
        temp[0] = datetime.strftime(dt, output_format)
        csvdata.append(temp)

    with open(filename.split('.')[0]+'.csv', 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerows(csvdata)

files = [
    "data/mask1_tmax.txt",
    "data/mask2_tmax.txt",
    "data/mask3_tmax.txt",
    "data/mask4_tmax.txt",
    "data/mask5_tmax.txt",
    "data/mask6_tmax.txt",
    "data/mask1_tmin.txt",
    "data/mask2_tmin.txt",
    "data/mask3_tmin.txt",
    "data/mask4_tmin.txt",
    "data/mask5_tmin.txt",
    "data/mask6_tmin.txt",
]

for file in files:
    preprocess(file)
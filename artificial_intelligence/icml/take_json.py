#!/usr/bin/python3.7

import sys
import simplejson
import csv


# main starts here
if (len(sys.argv) != 2):
    print("usage: ./take_json.py <icml2020_papers.json>");
    sys.exit(0);

input_filename = sys.argv[1];
print("parsing input files={input_filename}".format(input_filename=input_filename));
input_file = open(input_filename, 'r');
objs = simplejson.loads(input_file.read());
input_file.close();


output_filename=input_filename+".csv";
with open(output_filename, mode='w') as csv_file:
    writer = csv.writer(csv_file, delimiter=',', quotechar='"');
    for obj in objs:
        title = obj['content']['title'];
        abstract = obj['content']['abstract'];
        writer.writerow([title.strip(), abstract.strip()])


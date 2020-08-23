#!/usr/bin/python3.8

import sys
import requests
from bs4 import BeautifulSoup
import csv
import urllib
import re
import json


# main function starts here, url
# usage: ./crawl_snp.py <url>


BASE="https://ieeexplore.ieee.org"

def get_abstract(link):
    resp = requests.get(link)
    lines = resp.text.split("\n");
    target_line = None;
    for line in lines:
        line = line.strip();
        if (line.startswith("global.document.metadata=")):
            target_line = line;
            break;
    if (target_line == None):
        raise Exception("failed to get abstract!");
    obj = json.loads(target_line.lstrip("global.document.metadata=")[0:-1])
    #print(json.dumps(obj, separators=(",", ":"), indent=2))
    return obj['abstract'];

# main function starts here

if(len(sys.argv) != 2 and len(sys.argv) != 3):
    print("usage: ./crawl_snp.py <url> [output_filename]")
    sys.exit(0);

url=sys.argv[1];
output_filename = sys.argv[2] if len(sys.argv)==3 else "data.csv"

print("# crawl site={url}, output_filename={output_filename}...".format(url=url, output_filename=output_filename))
resp=requests.get(url);

parts = urllib.parse.urlparse(resp.url)
BASE= parts.scheme+"://"+parts.netloc;
#print("base = "+BASE)

soup=BeautifulSoup(resp.text, 'html.parser')

with open(output_filename, mode='w') as csv_file:
    writer = csv.writer(csv_file, delimiter=',', quotechar='"');
    for item in soup.find_all('li', {'class':'entry inproceedings'}):
        title = item.find('span', {'class':'title'})
        article_title = re.sub("\s+", " ", title.text.strip())
        link = item.find('nav', {'class':'publ'}).find('li').find('a')['href']
        abstract = get_abstract(link)
        print('title = '+article_title)
        writer.writerow([article_title, abstract])


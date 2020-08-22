#!/usr/bin/python3.8

import sys
import requests
from bs4 import BeautifulSoup
import csv
import urllib
import re
import json


# main function starts here, url
# usage: ./crawl_vldb.py <url>


BASE="https://dl.acm.org"

def get_abstract(link):
    resp = requests.get(link)
    abstract_soup = BeautifulSoup(resp.text, 'html.parser')
    abstract = abstract_soup.find('div', {'class':'abstractSection abstractInFull'})
    return None if (abstract == None) else abstract.text

# main function starts here

if(len(sys.argv) != 2 and len(sys.argv) != 3):
    print("usage: ./crawl_www.py <url> [output_filename]")
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
    for item in soup.find_all('li', {'class':'entry article'}):
        title = item.find('span', {'class':'title'})
        article_title = re.sub("\s+", " ", title.text.strip())
        refs = item.find('nav', {'class':'publ'}).find_all('li', {'class':'ee'})
        if (len(refs) < 2):
            print("skip", title);
            continue;
        link = refs[1].find('a')['href']
        abstract = get_abstract(link)
        print('title = '+article_title)
        if (abstract == None):
            print("failed to find abstract, replace with title!")
            abstract = title.text;
        writer.writerow([article_title, abstract])


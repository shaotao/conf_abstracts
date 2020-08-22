#!/usr/bin/python3.8

import sys
import requests
from bs4 import BeautifulSoup
import csv
import urllib
import re


# main function starts here, url
# usage: ./crawl_ccs.py <url>


BASE="https://dl.acm.org"

def get_abstract(link):
    resp = requests.get(link)
    soup = BeautifulSoup(resp.text, 'html.parser');
    item = soup.find('div', {"class":"abstractSection abstractInFull"}).find('p');
    abstract = item.text.strip() if item is not None else ""
    return abstract

# main function starts here

if(len(sys.argv) != 2 and len(sys.argv) != 3):
    print("usage: ./crawl_ccs.py <url> [output_filename]")
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
    for item in soup.find_all('h5', {'class':'issue-item__title'}):
        title = item.find('a')
        link = urllib.parse.urljoin(BASE, title['href'])
        article_title = re.sub("\s+", " ", title.text.strip())
        abstract = get_abstract(link)
        print('title = '+article_title)
        writer.writerow([article_title, abstract])


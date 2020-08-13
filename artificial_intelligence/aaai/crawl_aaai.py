#!/usr/bin/python

import sys
import requests
from bs4 import BeautifulSoup
import csv


# main function starts here, url
# usage: ./crawl_aaai.py <url>

def get_abstract(link):
    resp = requests.get(link)
    soup = BeautifulSoup(resp.text, 'html.parser');
    item = soup.find('meta', {"name":"DC.Description"});
    abstract = item['content'].strip() if item is not None else ""
    return abstract


if(len(sys.argv) != 2):
    print("usage: ./crawl_aaai.py <url>")
    sys.exit(0);

url=sys.argv[1];

print("# crawl site={url}...".format(url=url))
resp=requests.get(url);
soup=BeautifulSoup(resp.text, 'html.parser')

with open('data.csv', mode='w') as csv_file:
    writer = csv.writer(csv_file, delimiter=',', quotechar='"');
    for item in soup.find_all('p', {'class':'left'}):
        title = item.find('a')
        link = title['href']
        article_title = title.text.strip()
        abstract = get_abstract(link)
        writer.writerow([article_title.encode('utf-8'), abstract.encode('utf-8')])


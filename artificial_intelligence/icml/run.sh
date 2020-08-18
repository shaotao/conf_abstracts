#!/bin/bash


time ./crawl_icml.py http://proceedings.mlr.press/v97 icml2019.csv

time ./crawl_icml.py http://proceedings.mlr.press/v80 icml2018.csv

time ./crawl_icml.py http://proceedings.mlr.press/v70 icml2017.csv

time ./crawl_icml.py http://proceedings.mlr.press/v48 icml2016.csv

wget https://icml.cc/static/virtual/data/icml_papers.json -O icml2020_papers.json
./take_json.py icml2020_papers.json

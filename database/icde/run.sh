#!/bin/bash

# ACM ICDE 2016
for i in {1..9}; do
  time ./crawl_icde.py  icde2016_${i}.csv
done



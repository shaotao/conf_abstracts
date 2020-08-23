#!/bin/bash

# USENIX NSDI  2017-2020
#for i in {17..20}; do
#  mkdir -p 20${i}
#  time ./crawl_nsdi.py https://www.usenix.org/conference/nsdi${i}/technical-sessions nsdi20${i}.csv
#  mv -f nsdi20${i}.csv 20${i}
#done

# USENIX NSDI 2016
mkdir -p 2016
time ./crawl_nsdi.py https://www.usenix.org/conference/nsdi16/technical-sessions nsdi2016.csv
mv -f nsdi2016.csv 2016


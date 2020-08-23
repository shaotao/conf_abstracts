#!/bin/bash

# ACM Mobisys 2020
#mkdir -p 2020
#time ./crawl_mobisys.py https://dl.acm.org/doi/proceedings/10.1145/3386901 mobisys2020.csv
#mv mobisys2020.csv 2020

# ACM Mobisys 2019
#mkdir -p 2019
#for i in {1..9}; do
#  pgno=$((i))
#  time ./crawl_mobisys.py https://dl.acm.org/doi/proceedings/10.1145/3307334?tocHeading=heading${pgno} mobisys2019_${i}.csv
#done
#mv mobisys2019*.csv 2019

# ACM Mobisys 2018
#mkdir -p 2018
#time ./crawl_mobisys.py https://dl.acm.org/doi/proceedings/10.1145/3210240 mobisys2018.csv
#mv mobisys2018.csv 2018

# ACM Mobisys 2017
#mkdir -p 2017
#for i in {1..11}; do
#  pgno=$((i+1))
#  time ./crawl_mobisys.py https://dl.acm.org/doi/proceedings/10.1145/3081333?tocHeading=heading${pgno} mobisys2017_${i}.csv
#done
#mv mobisys2017*.csv 2017

# ACM Mobisys 2016
mkdir -p 2016
for i in {1..8}; do
  pgno=$((i))
  time ./crawl_mobisys.py https://dl.acm.org/doi/proceedings/10.1145/2906388?tocHeading=heading${pgno} mobisys2016_${i}.csv
done
mv mobisys2016*.csv 2016

#!/bin/bash

# ACM PODC 2020
#mkdir -p 2020
#for i in {1..9}; do
#  time ./crawl_podc.py https://dl.acm.org/doi/proceedings/10.1145/3382734?tocHeading=heading${i} podc2020_${i}.csv
#done
#mv -f podc2020*.csv 2020

# ACM PODC 2019
#mkdir -p 2019
#for i in {1..15}; do
#  pgno=$((i+1))
#  time ./crawl_podc.py https://dl.acm.org/doi/proceedings/10.1145/3293611?tocHeading=heading${pgno} podc2019_${i}.csv
#done
#mv -f podc2019*.csv 2019

# ACM PODC 2018
#mkdir -p 2018
#for i in {1..15}; do
#  pgno=$((i+1))
#  time ./crawl_podc.py https://dl.acm.org/doi/proceedings/10.1145/3212734?tocHeading=heading${pgno} podc2018_${i}.csv
#done
#mv -f podc2018*.csv 2018

# ACM PODC 2017
#mkdir -p 2017
#for i in {1..12}; do
#  pgno=$((i))
#  time ./crawl_podc.py https://dl.acm.org/doi/proceedings/10.1145/3087801?tocHeading=heading${pgno} podc2017_${i}.csv
#done
#mv -f podc2017*.csv 2017

# ACM PODC 2016
mkdir -p 2016
for i in {1..13}; do
  pgno=$((i))
  time ./crawl_podc.py https://dl.acm.org/doi/proceedings/10.1145/2933057?tocHeading=heading${pgno} podc2016_${i}.csv
done
mv -f podc2016*.csv 2016


#!/bin/bash

# ACM Mobicom 2020
#mkdir -p 2020
#time ./crawl_mobicom.py https://dl.acm.org/doi/proceedings/10.1145/3372224 mobicom2020.csv
#mv mobicom2020.csv 2020

# ACM Mobicom 2019
#mkdir -p 2019
#time ./crawl_mobicom.py https://dl.acm.org/doi/proceedings/10.1145/3300061 mobicom2019.csv
#mv mobicom2019.csv 2019

# ACM Mobicom 2018
#mkdir -p 2018
#for i in {1..14}; do
#  pgno=$((i+1))
#  time ./crawl_mobicom.py https://dl.acm.org/doi/proceedings/10.1145/3241539?tocHeading=heading${pgno} mobicom2018_${i}.csv
#done
#mv mobicom2018*.csv 2018

# ACM Mobicom 2017
#mkdir -p 2017
#for i in {1..11}; do
#  pgno=$((i+1))
#  time ./crawl_mobicom.py https://dl.acm.org/doi/proceedings/10.1145/3117811?tocHeading=heading${pgno} mobicom2017_${i}.csv
#done
#mv mobicom2017*.csv 2017

# ACM Mobicom 2016
mkdir -p 2016
for i in {1..8}; do
  pgno=$((i+1))
  time ./crawl_mobicom.py https://dl.acm.org/doi/proceedings/10.1145/2973750?tocHeading=heading${pgno} mobicom2016_${i}.csv
done
mv mobicom2016*.csv 2016

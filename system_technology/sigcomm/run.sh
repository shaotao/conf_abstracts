#!/bin/bash

# ACM SIGCOMM 2020
#mkdir -p 2020
#time ./crawl_sigcomm.py https://dl.acm.org/doi/proceedings/10.1145/3387514 sigcomm2020_1.csv
#time ./crawl_sigcomm.py https://dl.acm.org/doi/proceedings/10.1145/3387514?id=31 sigcomm2020_2.csv
#mv -f sigcomm2020*.csv 2020

# ACM SIGCOMM 2019
#mkdir -p 2019
#time ./crawl_sigcomm.py https://dl.acm.org/doi/proceedings/10.1145/3341302 sigcomm2019_1.csv
#time ./crawl_sigcomm.py https://dl.acm.org/doi/proceedings/10.1145/3342280 sigcomm2019_2.csv
#time ./crawl_sigcomm.py https://dl.acm.org/doi/proceedings/10.1145/3342280?id=31 sigcomm2019_3.csv
#time ./crawl_sigcomm.py https://dl.acm.org/doi/proceedings/10.1145/3342280?id=61 sigcomm2019_4.csv
#mv -f sigcomm2019*.csv 2019

# ACM SIGCOMM 2018
#mkdir -p 2018
#for i in {1..10}; do
#  time ./crawl_sigcomm.py https://dl.acm.org/doi/proceedings/10.1145/3230543?tocHeading=heading${i} sigcomm2018_${i}.csv
#done
#time ./crawl_sigcomm.py https://dl.acm.org/doi/proceedings/10.1145/3234200 sigcomm2018_poster_and_demo_1.csv
#time ./crawl_sigcomm.py https://dl.acm.org/doi/proceedings/10.1145/3234200?id=31 sigcomm2018_poster_and_demo_2.csv
#mv -f sigcomm2018*.csv 2018

# ACM SIGCOMM 2017
#mkdir -p 2017
#for i in {1..12}; do
#  time ./crawl_sigcomm.py https://dl.acm.org/doi/proceedings/10.1145/3098822?tocHeading=heading${i} sigcomm2017_${i}.csv
#done
#mv -f sigcomm2017*.csv 2017

# ACM SIGCOMM 2016
mkdir -p 2016
for i in {1..13}; do
  time ./crawl_sigcomm.py https://dl.acm.org/doi/proceedings/10.1145/2934872?tocHeading=heading${i} sigcomm2016_${i}.csv
done
mv -f sigcomm2016*.csv 2016

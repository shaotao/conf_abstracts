#!/bin/bash

# ACM SIGMOD 2020
#for i in {1..36}; do
#  pgno=$((i+1))
#  time ./crawl_sigmod.py https://dl.acm.org/doi/proceedings/10.1145/3318464?tocHeading=heading${pgno} sigmod2020_${i}.csv
#done

# ACM SIGMOD 2019
for i in {1..23}; do
  pgno=$((i+1))
  time ./crawl_sigmod.py https://dl.acm.org/doi/proceedings/10.1145/3299869?tocHeading=heading${pgno} sigmod2019_${i}.csv
done

# ACM SIGMOD 2018
for i in {1..21}; do
  pgno=$((i+1))
  time ./crawl_sigmod.py https://dl.acm.org/doi/proceedings/10.1145/3183713?tocHeading=heading${pgno} sigmod2018_${i}.csv
done

# ACM SIGMOD 2017
for i in {1..31}; do
  pgno=$((i+1))
  time ./crawl_sigmod.py https://dl.acm.org/doi/proceedings/10.1145/3035918?tocHeading=heading${pgno} sigmod2017_${i}.csv
done

# ACM SIGMOD 2016
for i in {1..22}; do
  pgno=$((i+1))
  time ./crawl_sigmod.py https://dl.acm.org/doi/proceedings/10.1145/2882903?tocHeading=heading${pgno} sigmod2016_${i}.csv
done

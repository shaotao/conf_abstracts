#!/bin/bash

# ACM CCS 2019
#for i in {1..50}; do
#  pgno=$((i))
#  time ./crawl_ccs.py https://dl.acm.org/doi/proceedings/10.1145/3319535?tocHeading=heading${pgno} ccs2019_${i}.csv
#done

# ACM CCS 2018
for i in {1..41}; do
  pgno=$((i+1))
  time ./crawl_ccs.py https://dl.acm.org/doi/proceedings/10.1145/3243734?tocHeading=heading${pgno} ccs2018_${i}.csv
done

# ACM CCS 2017
for i in {1..52}; do
  pgno=$((i+1))
  time ./crawl_ccs.py https://dl.acm.org/doi/proceedings/10.1145/3133956?tocHeading=heading${pgno} ccs2017_${i}.csv
done

# ACM CCS 2016
for i in {1..48}; do
  pgno=$((i+1))
  time ./crawl_ccs.py https://dl.acm.org/doi/proceedings/10.1145/2976749?tocHeading=heading${pgno} ccs2016_${i}.csv
done

#!/bin/bash

# ACM WWW 2020
#time ./crawl_www.py https://dl.acm.org/doi/proceedings/10.1145/3366423?tocHeading=heading1 www2020.csv

# ACM www 2019
for i in {0..12}; do
  id=$((30*i+1))
  seqno=$((i+1))
  time ./crawl_www.py https://dl.acm.org/doi/proceedings/10.1145/3308558?id=${id} www2019_${seqno}.csv
done


# ACM www 2018
#for i in {1..12}; do
#  time ./crawl_www.py https://dl.acm.org/doi/proceedings/10.5555/3178876?tocHeading=heading${i} www2018_part${i}.csv
#done

# ACM www 2017
#for i in {2..41}; do
#  seqno=$((i-1))
#  time ./crawl_www.py https://dl.acm.org/doi/proceedings/10.5555/3038912?tocHeading=heading${i} www2017_part${seqno}.csv
#done

# ACM www 2016
#for i in {2..39}; do
#  seqno=$((i-1))
#  time ./crawl_www.py https://dl.acm.org/doi/proceedings/10.5555/2872427?tocHeading=heading${i} www2016_part${seqno}.csv
#done


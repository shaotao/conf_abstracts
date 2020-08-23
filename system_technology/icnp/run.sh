#!/bin/bash

# ACM ICNP
for i in {2016..2019}; do
  time ./crawl_icnp.py https://dblp.org/db/conf/icnp/icnp${i}.html icnp${i}.csv
done


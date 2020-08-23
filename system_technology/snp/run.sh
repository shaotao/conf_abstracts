#!/bin/bash

# IEEE Security and Privacy
for i in {2016..2020}; do
  mkdir -p ${i}
  time ./crawl_snp.py https://dblp.org/db/conf/sp/sp${i}.html snp${i}.csv
  mv snp${i}.csv ${i}
  ls -al ${i}
done


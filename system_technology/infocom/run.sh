#!/bin/bash

# IEEE Infocom
for i in {2016..2020}; do
  mkdir -p ${i}
  time ./crawl_infocom.py https://dblp.org/db/conf/infocom/infocom${i}.html ${i}/infocom${i}.csv
  ls -al ${i}
done


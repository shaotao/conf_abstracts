#!/bin/bash


time ./crawl_iccv.py https://openaccess.thecvf.com/ICCV2019.py?day=2019-10-29 iccv2019_day1.csv
time ./crawl_iccv.py https://openaccess.thecvf.com/ICCV2019.py?day=2019-10-30 iccv2019_day2.csv
time ./crawl_iccv.py https://openaccess.thecvf.com/ICCV2019.py?day=2019-10-31 iccv2019_day3.csv
time ./crawl_iccv.py https://openaccess.thecvf.com/ICCV2019.py?day=2019-11-01 iccv2019_day4.csv



time ./crawl_iccv.py https://openaccess.thecvf.com/ICCV2017 iccv2017.csv

time ./crawl_iccv.py https://openaccess.thecvf.com/ICCV2015 iccv2015.csv


#!/bin/bash


time ./crawl_cvpr.py https://openaccess.thecvf.com/CVPR2018.py?day=2018-06-19 cvpr2018_day1.csv
time ./crawl_cvpr.py https://openaccess.thecvf.com/CVPR2018.py?day=2018-06-20 cvpr2018_day2.csv
time ./crawl_cvpr.py https://openaccess.thecvf.com/CVPR2018.py?day=2018-06-21 cvpr2018_day3.csv



time ./crawl_cvpr.py https://openaccess.thecvf.com/CVPR2017 cvpr2017.csv
time ./crawl_cvpr.py https://openaccess.thecvf.com/CVPR2016 cvpr2016.csv


#!/bin/bash 

wget -0 versions.txt http://yoko.ukrtux.com:8899/versions.txt
sort versions.txt | uniq -c | sort -nr | head -n 1 


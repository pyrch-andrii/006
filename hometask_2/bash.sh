#!/bin/bash
#
# What to backup 
SOURCEDIR=$1
#
# Where to backup
BACKUPDIR=$2
#
# Format of the date
DATE=`date +"%Y.%m.%d"`

DESTDIR="$backup_dir"/$date

mkdir $DESTDIR
cd $SOURCEDIR 
for i in `find . -mtime -1` 
do 
cp -r $i $DESTDIR

done

#!/bin/sh

###
#  Temp Dir Cleaner
#  Michele Zonca
#  http://shatsar.github.com
###

#--
# Configuration
#--

# A space separeted list of directories to be processed
DIRS="/tmp ~/tmp"

# Absolute path to log file
LOG_FILE=~/cleaner.log

# used as value for -atime parameter of find (see man find)
LIMIT='5d'

# a for access,
# m for modification
# c for creation
CRITERIA_FLAG=a

#--- 

echo "-- Starting execution `date`" >> $LOG_FILE

for DIR in $DIRS 
do
cd $DIR 2>> $LOG_FILE && find . -"$CRITERIA_FLAG"time +$LIMIT -exec rm -rfv {} \; >> $LOG_FILE 2>&1
done

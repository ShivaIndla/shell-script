#!/bin/bash

# data type is not imp in shell script because shell automatically detect the dta type aither it has int or string.

NO1=$1  #sh 05-data-types.sh 100 200
NO2=$2

SUM=$(($NO1+$NO2))

echo "Total of $NO1 and $NO2 is: $SUM"
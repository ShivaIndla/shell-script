#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 10 ]  # (-gt, -lt, -eq, -ne, -ge, -le)
then
    echo "Given $NUMBER is grater than 10"
else
echo "Given $NUMBER is less than 10"
fi
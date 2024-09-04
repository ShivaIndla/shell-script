#!/bin/bash

NUMBER=$firstnum

if [ $NUMBER -ge 10 ]  # (-gt, -lt, -eq, -ne, -ge, -le)
then
    echo "Given $NUMBER is grater than or equal to 10"
else
echo "Given $NUMBER is less than 10"
fi
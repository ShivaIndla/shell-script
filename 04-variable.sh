#!/bin/bash

MOVIES("RRR" "DjTillu" "Jalsa")

echo "first movie is: ${MOVIES[0]}"
echo "second movie is: ${MOVIES[1]}"
echo "third movie is: ${MOVIES[2]}"
echo "all movies are: ${MOVIES[@]}"
#!/usr/bin/env bash
set -e
mkdir -p output
INPUT=upstream/output
inkomst=$(cat ${INPUT}/lon.txt)
res=$(echo "scale=0; (${inkomst} * 0.1021) / 1" | bc -l)
echo ${res} > output/arbetsgivaravgift_och_egenavgift.txt

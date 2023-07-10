#!/bin/bash

for FILE in *.gnuplot
do
    gnuplot ${FILE}
done
cp *.svg ~/using.tech/static/dissecting-wsprd/

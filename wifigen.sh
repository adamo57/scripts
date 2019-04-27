#!/bin/bash

for i in $(shuf -i 1000000-9999999 -n 3); do
    echo "1h-$i"
done
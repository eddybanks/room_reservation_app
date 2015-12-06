#!/bin/bash

while :
do
        python /examples/beam.py --mode t recv print > register.txt
        google-chrome 127.0.0.1:3000
        sleep 1
done

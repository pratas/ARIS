#!/bin/bash
# . ENCODE $1
./ARIS -c 16 -m 1000 -i -a 0.1 -b 0.9 -l 7 -g 0.4 $1
./GeCo -tm 1:1:0:0/0 -tm 3:1:0:0/0 -tm 5:1:1:0/0 -tm 7:1:1:0/0 -g 0.9 EXTRA.is

#!/bin/bash
for i in {1..254}; do nc -nv -w 1 10.11.1.$i 110; done

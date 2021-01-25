#!/bin/sh
echo -n  " "
sensors | grep Package | awk '{print substr($4, 2)}'

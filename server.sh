#!/bin/sh
source "./bin/activate"
python -m littlehttpserver -d "./ajax" -p 10999 --servertype thread &

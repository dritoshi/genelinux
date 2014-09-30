#!/bin/sh

NOTEBOOK_DIR=${1-$PWD}

ipython notebook --no-browser --ip=0.0.0.0 --port=8888 --notebook-dir=$NOTEBOOK_DIR

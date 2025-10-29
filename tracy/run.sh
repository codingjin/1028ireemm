#!/bin/bash

set -x

TOOLDIR="/home/jin/ireetracy-build/tools"
MODULEFILE="matmul.vmfb"


INPUT1="2x2xf32=[[4,5][6,8]]"
INPUT2="2x2xf32=[[1,4][3,2]]"
INPUT3="2x2xf32=[[0,0][0,0]]"

${TOOLDIR}/iree-run-module --device=local-task --module=${MODULEFILE} --function=matmul --input=${INPUT1} --input=${INPUT2} --input=${INPUT3}
#!/bin/bash

TOOLDIR="/home/jin/iree-build/tools"
MODULEFILE="matmul.vmfb"


INPUT1="@matrix1.npy"
INPUT2="@matrix2.npy"
INPUT3="@matrix3.npy"

${TOOLDIR}/iree-run-module --module=${MODULEFILE} --input=${INPUT1} --input=${INPUT2} --input=${INPUT3}
#!/bin/bash
set -x

TOOLDIR="/home/jin/ireetracy-build/tools"
COMPILEOPT="--iree-hal-target-device=local \
            --iree-hal-local-target-device-backends=llvm-cpu \
            --iree-llvmcpu-target-cpu-features=host \
            --iree-llvmcpu-enable-ukernels=all \
            --iree-hal-executable-debug-level=3"

MLIRFILE="matmul.mlir"
OUTFILE="matmul.vmfb"

#${TOOLDIR}/iree-compile ${COMPILEOPT} ${MLIRFILE} -o ${OUTFILE}

${TOOLDIR}/iree-compile ${COMPILEOPT} ${MLIRFILE} -o ${OUTFILE}


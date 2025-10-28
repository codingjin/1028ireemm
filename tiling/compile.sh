#!/bin/bash
set -x

TOOLDIR="/home/jin/iree-build/tools"
COMPILEOPT="--iree-hal-target-device=local \
            --iree-hal-local-target-device-backends=llvm-cpu \
            --iree-llvmcpu-target-cpu-features=host \
            --iree-llvmcpu-enable-ukernels=all \
            --iree-opt-level=O2 --iree-opt-data-tiling"

MLIRFILE="matmul.mlir"
OUTFILE="matmul.vmfb"

#${TOOLDIR}/iree-compile ${COMPILEOPT} ${MLIRFILE} -o ${OUTFILE}

${TOOLDIR}/iree-compile ${COMPILEOPT} --mlir-print-ir-after-all --mlir-print-ir-before-all --mlir-print-local-scope --mlir-disable-threading ${MLIRFILE} -o ${OUTFILE} 2>dump.mlir
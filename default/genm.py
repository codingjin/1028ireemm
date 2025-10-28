import numpy as np
import sys

if len(sys.argv) != 4:
    print("Usage: python genm.py M N K")
    sys.exit(1)

try:
    arg1 = int(sys.argv[1])
    arg2 = int(sys.argv[2])
    arg3 = int(sys.argv[3])

    # Check if they are positive
    if arg1 <= 0 or arg2 <= 0 or arg3 <= 0:
        raise ValueError("All arguments must be positive integers")

except ValueError as e:
    print("Error:", e)
    sys.exit(1)


M, N, K = arg1, arg2, arg3
# set the random seed
np.random.seed(137)

matrix1 = np.random.rand(M, K).astype(np.float32)
matrix2 = np.random.rand(K, N).astype(np.float32)
matrix3 = np.zeros((M, N), dtype=np.float32)


np.save("matrix1.npy", matrix1)
np.save("matrix2.npy", matrix2)
np.save("matrix3.npy", matrix3)

func.func @matmul(%lhs: tensor<4096x4096xf32>, %rhs: tensor<4096x4096xf32>, %acc: tensor<4096x4096xf32>) -> tensor<4096x4096xf32> {
  %result = linalg.matmul ins(%lhs, %rhs: tensor<4096x4096xf32>, tensor<4096x4096xf32>) outs(%acc: tensor<4096x4096xf32>) -> tensor<4096x4096xf32>
  return %result: tensor<4096x4096xf32>
}
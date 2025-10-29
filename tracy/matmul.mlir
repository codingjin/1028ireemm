func.func @matmul(%lhs: tensor<2x2xf32>, %rhs: tensor<2x2xf32>, %acc: tensor<2x2xf32>) -> tensor<2x2xf32> {
  %result = linalg.matmul ins(%lhs, %rhs: tensor<2x2xf32>, tensor<2x2xf32>) outs(%acc: tensor<2x2xf32>) -> tensor<2x2xf32>
  return %result: tensor<2x2xf32>
}
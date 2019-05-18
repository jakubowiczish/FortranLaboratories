import matmull_wrapper

A = [[1,4],
     [-5,8]]

B = [[7,8],
     [10,11]]

C = matmull_wrapper.matmull_wrapper.matrix_multiplication(A, B)
print(C)
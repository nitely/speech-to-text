switch("passC", "-lstdc++")
switch("passL", "-lstdc++")
switch("passC", "-std=c++11")
switch("passL", "-lm")
switch("passC", "-fopenmp")
#switch("passL", "-lvulkan -fopenmp")
switch("passL", "-lopenblas -fopenmp")
switch("passL", "-lonnxruntime")  # 1.20.1

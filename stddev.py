def std(arr):
  import math
  total = 0.0
  for i in arr:
    total = total + i 
  print total # this is the sum
  mean = total / len(arr) # this is the mean
  print mean
  count = 0
  for j in arr:
    count = count + pow((j - mean), 2)
  b =  count / len(arr) # this is the variance
  print math.sqrt(b) # this is the standard deviation
  return


std([1, 5, 10, 3, 8, 12, 4])
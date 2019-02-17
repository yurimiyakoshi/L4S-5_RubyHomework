def arraycalc(x, y)
  arr = Array.new
  length = x.length - 1
  for z in 0..length
    i = x[z]
    j = y[z]
    answer = yield i, j
    arr.push(answer)
  end
  print answer
end

arraycalc([1,2,3], [4,5,6]){|x ,y| x * y}

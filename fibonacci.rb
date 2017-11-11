def fib(n, result={})
  if n <= 1
    return n
  end

  if result[n].nil?
    result[n] = fib(n - 1, result) + fib(n - 2, result)
  end

  return result[n]
end

puts fib(30)
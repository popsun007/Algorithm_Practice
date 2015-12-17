def fibonacci(n)
  @results = {}

  def fib_helper(x)
    if x <= 1
      return x
    end

    if @results[x].nil?
      @results[x] = fib_helper(x - 1) + fib_helper(x - 2)
    end

    return @results[x]
  end

  return fib_helper(n)
end

puts fibonacci(500)
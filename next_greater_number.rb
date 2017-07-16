def next_greater_number(find_nums,nums)
  return [] if find_nums.nil? || nums.nil?
  
  result = []
  stack =[]
  records = {}
  nums.each do |num|
    while !stack.empty? && stack.last < num
      records.store(stack.pop, num) 
    end
    stack.push(num)
  end
  
  find_nums.each do |num|
    if records[num].nil?
      result.push(-1)
    else
      result.push(records[num])
    end
  end

  result
end

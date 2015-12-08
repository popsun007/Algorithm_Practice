def quick_sort(arr)
  if arr.length <=1 
    return arr
  end

  pivot = arr.length / 2
  less = []
  great = []

  for i in 0...arr.length
    if i === pivot
      next
    end 
    if arr[i] < arr[pivot]
      less.push(arr[i])
    else
      great.push(arr[i])
    end
  end

  quick_sort(less) + [arr[pivot]] + quick_sort(great)
end

arr = [43, 3, 5, 9, 3, 0, 4, 7]

print quick_sort(arr)

 
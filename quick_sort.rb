def quick_sort(arr)
  if arr.length <=1 
    return arr
  end

  pivot = arr.length / 2
  less = []
  great = []

  for i in 0...arr.length
    if i != pivot && arr[i] <  arr[pivot]
      less.push(arr[i])
    else
      great.push(arr[i])
    end
  end

  quick_sort(less) + [pivot] + quick_sort(great)
end

arr = [43, 5, 9, 3, 0, 4, 7]

quick_sort(arr)

put arr
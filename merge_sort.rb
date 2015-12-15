def merge_sort(array)
	
	if array.length == 1
		return array
	end

	mid = array.length/2
	left = array[0, mid]
	right = array[mid, array.length]

	arrange(merge_sort(left), merge_sort(right))

end

def arrange(left, right)
	sorted = []

	while left[0] && right[0] 
		if left[0] >= right[0]
			sorted.push(right.shift)
		else
			sorted.push(left.shift)
		end
	end

	while left[0]
		sorted.push(left.shift)
	end
	while right[0]
		sorted.push(right.shift)
	end

	return sorted
end

arr = [3, 4, 0, 5, 0, -1, 29, 29]
display = merge_sort(arr)
print display
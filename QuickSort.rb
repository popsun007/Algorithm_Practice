def quick_sort (nums)
	if nums.length <= 1
		return nums
	end

	pivot = nums[0]
	prev_nums = []
	after_nums = []

	nums[1..-1].each do |num|
		if num > pivot
			after_nums << num
		else
			prev_nums << num
		end
	end

	quick_sort(prev_nums) + [pivot] + quick_sort(after_nums)
end

print quick_sort([5, 3, 1, 1, 4, -9, 8, 0, 2])
def bucket_sort(arr)
	stage_0 = []
	stage_1 = []
	stage_2 = []
	stage_3 = []
	stage_4 = []

	for i in 0...arr.length
		if arr[i] <= 0.2
			stage_0.push(arr[i])
			stage_0.sort!
		elsif arr[i] <= 0.4
			stage_1.push(arr[i])
			stage_1.sort!
		elsif arr[i] <= 0.6
			stage_2.push(arr[i])
			stage_2.sort!
		elsif arr[i] <= 0.8
			stage_3.push(arr[i])
			stage_3.sort!
		else
			stage_4.push(arr[i])
			stage_4.sort!
		end
	end

	stages = []
	stages.push(stage_0)
	stages.push(stage_1)
	stages.push(stage_2)
	stages.push(stage_3)
	stages.push(stage_4)

	print stages.flatten
end

def 
puts bucket_sort([0.897, 0.565, 0.656, 0.1234, 0.665, 0.3434])
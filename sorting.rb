def bubbleSort(input)
	n = input.length
	loop do
		swapsDone = false
		(n-1).times do |i|
			if input[i] > input[i+1]
				input[i], input[i+1] = input[i+1], input[i]
				swapsDone = true
			end
		end

		break if not swapsDone
	end
	print input
end

def mergeSort(input)
	def merge(leftSorted, rightSorted)
		result = []
		leftIndex = 0
		rightIndex = 0
		loop do
			break if rightIndex >= rightSorted.length and leftIndex >= leftSorted.length
			if rightIndex >= rightSorted.length or (leftIndex < leftSorted.length and leftSorted[leftIndex] < rightSorted[rightIndex])
				result << leftSorted[leftIndex]
				leftIndex+=1
			else
				result << rightSorted[rightIndex]
				rightIndex+=1
			end
		end
		return result
	end

	def sliceAndMerge(input)
		return input if input.length <= 1
		middleIndex = input.length/2 - 1
		leftSorted = sliceAndMerge(input[0..middleIndex])
		rightSorted = sliceAndMerge(input[middleIndex+1..-1])
		return merge(leftSorted, rightSorted)
	end

	print sliceAndMerge(input)
end

bubbleSort([4,3,-2,100,-1234,99,0,357])
print "\n"
mergeSort([40,30,-20,1000,-12340,990,0,3570])
/*:
# [Codility Lesson 9 Leader: MaxSliceSum](https://app.codility.com/programmers/lessons/9-maximum_slice_problem/max_slice_sum/)

*/
/*:
### References:
* Kadane's algorithm:
	* [Wikipedia](https://en.wikipedia.org/wiki/Maximum_subarray_problem)
	* [geeksforgeeks](https://www.geeksforgeeks.org/largest-sum-contiguous-subarray/)
*/
/*:
### The result will be:
* Task Score		100%
* Correctness		100%
* Performance		100%
*/
import Foundation

// Given Vriables
var givenNumbers = [3, 2, -6, 4, 0]

public func solution(_ A : inout [Int]) -> Int {
	
	var currentSum = 0, maximumSum = Int.min, currentValue: Int
	for index in -1..<A.count - 1 {
		currentValue = A[index + 1]
		currentSum = max(currentSum + currentValue, currentValue)
		maximumSum = max(currentSum, maximumSum)
	}
	
	return maximumSum
}

// Test
print(solution(&givenNumbers))

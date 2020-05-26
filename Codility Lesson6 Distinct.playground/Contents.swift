/*
Codility Lesson 6 Sorting: MaxProductOfThree
Link: https://app.codility.com/programmers/lessons/6-sorting/max_product_of_three/

Task Score	100%
Correctness	100%
Performance 100%
*/

import Foundation

// Given Vriables
var givenNumbers = [-3, 1, 2, -2, 5, 6]

public func solution(_ A : inout [Int]) -> Int {
	A.sort()
	let countA = A.count
	
	if A[countA - 1] < 0 {
		return A[countA - 1] * A[countA - 2] * A[countA - 3]
	}
	
	if A[countA - 2] < 0 || A[countA - 3] < 0 {
		return A[countA - 1] * A[0] * A[1]
	}
	
	return max(A[countA - 1] * A[countA - 2] * A[countA - 3],
			   A[countA - 1]  * A[0] * A[1])
}

// Test
print(solution(&givenNumbers))

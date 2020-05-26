/*
Codility Lesson 6 Sorting: Triangle
Link: https://app.codility.com/programmers/lessons/6-sorting/triangle/

Task Score	100%
Correctness	100%
Performance 100%
*/

import Foundation

// Given Vriables
var givenNumbers = [10, 2, 5, 1, 8, 20]

public func solution(_ A : inout [Int]) -> Int {
	guard A.count >= 3 else {
		return 0
	}
	A.sort()
	
	for element in 0..<A.count - 2 {
		if Int64(A[element] + A[element + 1]) > A[element + 2] &&
		   Int64(A[element + 1] + A[element + 2]) > A[element] &&
		   Int64(A[element + 2] + A[element]) > A[element + 1] {
			return 1
		}
	}
	return 0
}

// Test
print(solution(&givenNumbers))

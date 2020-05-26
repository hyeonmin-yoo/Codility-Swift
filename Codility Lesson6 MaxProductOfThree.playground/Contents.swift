/*
Codility Lesson 6 Sorting: Distinct
Link: https://app.codility.com/programmers/lessons/6-sorting/distinct/

Task Score	100%
Correctness	100%
Performance 100%
*/

import Foundation

// Given Vriables
var duplicated = [2, 1, 1, 2, 3, 1]

public func solution(_ A : inout [Int]) -> Int {
	// Fist attempt
	var distinctSet = Set<Int>()
	for element in A { distinctSet.insert(element) }
	
	return distinctSet.count
}

// Test
print(solution(&duplicated))

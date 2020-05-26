/*
Codility Lesson 8 Leader: Dominator
Link: https://app.codility.com/programmers/lessons/8-leader/dominator/

Task Score	100%
Correctness	100%
Performance 100%
*/

import Foundation

// Given Vriables
var givenNumbers = [3, 4, 3, 2, 3, -1, 3, 3]


public func solution(_ A : inout [Int]) -> Int {
	if A.count == 0 { return -1 }
	
	var candidates = [Int: Int]()
	for candidate in A {
		if candidates[candidate] == nil {
			candidates[candidate] = 1
		} else {
			candidates[candidate]? += 1
		}
	}
	let halfOfArray = Int(Float(A.count) * 0.5)
	var dominatorCount = 0
	var dominator = 0
	
	for (key, count) in candidates {
		if count > halfOfArray {
			dominator = key
			dominatorCount = count
		}
	}
	guard let dominatorIndex = A.firstIndex(of: dominator),
		dominatorCount > halfOfArray else {
		return -1
	}
	
	return dominatorIndex
}

// Test
print(solution(&givenNumbers))

/*
Codility Lesson 4 Counting Elements: FrogRiverOne
Link: https://app.codility.com/programmers/lessons/4-counting_elements/frog_river_one/

Task Score	100%
Correctness	100%
Performance 100%
*/

import Foundation

// Given Vriables
let lastLeaf = 5
var leafFalls = [1, 3, 1, 4, 2, 3, 5, 4,]

public func solution(_ X : Int, _ A : inout [Int]) -> Int {
	var uniqueElements = Set<Int>()
	for (index, element) in A.enumerated() {
		if element <= X { uniqueElements.insert(element) }
		if uniqueElements.count == X { return index }
	}
	return -1
}

// Test
print(solution(lastLeaf, &leafFalls))

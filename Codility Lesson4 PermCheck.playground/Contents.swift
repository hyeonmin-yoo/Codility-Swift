/*
Codility Lesson 4 Counting Elements: TapeEquilibrium
Link: https://app.codility.com/programmers/lessons/4-counting_elements/perm_check/

Task Score	100%
Correctness	100%
Performance 100%
*/

import Foundation

// Given Vriables
var input1 = [4, 1, 3, 2] // permutation
var input2 = [4, 1, 3] // non-permutation


public func solution(_ A : inout [Int]) -> Int {

	var numbersSet = Set<Int>()
	
	for number in A {
		if number > A.count || numbersSet.contains(number) { return 0 }
		numbersSet.insert(number)
	}
	return 1
}

// Tests
print("input1: \(solution(&input1))")
print("input2: \(solution(&input2))")


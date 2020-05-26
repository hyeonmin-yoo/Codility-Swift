/*
Codility Lesson 5 Prefix Sums: PassingCars
Link: https://app.codility.com/programmers/lessons/5-prefix_sums/passing_cars/

Task Score	100%
Correctness	100%
Performance 100%
*/

import Foundation

// Given Vriables
var cars = [0, 1, 0, 1, 1]

public func solution(_ A : inout [Int]) -> Int {
	var countEast = 0
	var countPassing = 0
	
	for element in A {
		if element == 0 { countEast += 1 }
		if element == 1 { countPassing += countEast }
		guard countPassing <= 1_000_000_000 else {
			return -1
		}
	}
	return countPassing
}

// Test
print(solution(&cars))

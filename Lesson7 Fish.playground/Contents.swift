/*
Codility Lesson 7 Stacks and Queues: Fish
Link: https://app.codility.com/programmers/lessons/7-stacks_and_queues/fish/

Task Score	100%
Correctness	100%
Performance 100%
*/

import Foundation

// Given Vriables
var givenSize = [4, 3, 2, 1, 5]
var givenDirection = [0, 1, 0, 0, 0]


public func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
	
	var flowingDown = [Int]()
	var flowingUp = 0
	
	for (index, size) in A.enumerated() {
		if B[index] == 1 {
			flowingDown.append(size)
		} else {
			if flowingDown.count == 0 {
				flowingUp += 1
			} else {
				while flowingDown.count > 0 {
					guard let sizeDown = flowingDown.last, size > sizeDown else {
						break
					}
					flowingDown.removeLast()
					if flowingDown.count == 0 {
						flowingUp += 1
					}
				}
			}
		}
	}
	return flowingDown.count + flowingUp
}

// Test
print(solution(&givenSize, &givenDirection))

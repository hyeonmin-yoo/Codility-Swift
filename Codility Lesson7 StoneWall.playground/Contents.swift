/*
Codility Lesson 7 Stacks and Queues: StoneWall
Link: https://app.codility.com/programmers/lessons/7-stacks_and_queues/stone_wall/

Task Score	100%
Correctness	100%
Performance 100%
*/

import Foundation

// Given Vriables
var givenHeights = [8, 8, 5, 7, 9, 8, 7, 4, 8]

public func solution(_ H : inout [Int]) -> Int {
	var stack = [Int]()
	var blockCount = 0
	
	for height in H {
		while !stack.isEmpty && stack.last! > height {
			stack.removeLast()
		}
		if stack.isEmpty || stack.last! < height {
			stack.append(height)
			blockCount += 1
		}
	}
	return blockCount
}

// Test
print(solution(&givenHeights))

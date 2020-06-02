/*
Codility Lesson 7 Stacks and Queues: Nesting
Link: https://app.codility.com/programmers/lessons/7-stacks_and_queues/nesting/

Task Score	100%
Correctness	100%
Performance 100%
*/

import Foundation

// Given Vriables
var nested = "(()(())())"
var notNested = "())"

public func solution(_ S : inout String) -> Int {
	
	var stack = [Character]()
	for element in S {
		if stack.isEmpty {
			stack.append(element)
			continue
		}
		
		if stack.last == "(" && element == ")" {
			stack.removeLast()
		} else {
			stack.append(element)
		}
	}
	return stack.count == 0 ? 1 : 0
}

// Test
print(solution(&nested))
print(solution(&notNested))

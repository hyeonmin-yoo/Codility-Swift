/*
Codility Lesson 7 Stacks and Queues: Brackets
Link: https://app.codility.com/programmers/lessons/6-sorting/triangle/

Task Score	100%
Correctness	100%
Performance 100%
*/

import Foundation

// Given Vriables
var givenString1 = "{[()()]}" // nested
var givenString2 = "([)()]" //  not nested

public func solution(_ S : inout String) -> Int {
	var stack = [Character]()
	var lastCharacter: Character
	
	for element in Array(S) {
		if element == "{" || element == "[" || element == "(" {
			stack.append(element)
		} else {
			if stack.isEmpty { return 0 }
			lastCharacter = stack.popLast()!
			
			if element == "}" && lastCharacter != "{" ||
			element == "]" && lastCharacter != "[" ||
			element == ")" && lastCharacter != "(" {
				return 0
			}
		}
	}
	guard stack.isEmpty else {
		return 0
	}
	return 1
}

// Test
print(solution(&givenString1))
print(solution(&givenString2))

/*:
# [Codility Lesson 15 Caterpillar method: ChocolatesByNumbers](https://app.codility.com/programmers/lessons/15-caterpillar_method/abs_distinct/)

## Level: Painless

### The result will be:
* Task Score		100%
* Correctness		100%
* Performance		100%
*/

import Foundation

// Given Vriables
var givenNumbers = [-5, -3, -1, 0, 3, 6]


public func solution(_ A : inout [Int]) -> Int {
	
	var distincts = Set<Int>()
	
	for element in A {
		distincts.insert(abs(element))
	}
	
	return distincts.count
}

// Test
print(solution(&givenNumbers))

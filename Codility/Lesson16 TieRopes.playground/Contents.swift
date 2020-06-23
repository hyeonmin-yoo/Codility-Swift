/*:
# [Codility Lesson 16
Greedy algorithms:
TieRopes](https://app.codility.com/programmers/lessons/16-greedy_algorithms/tie_ropes/)

## Level: Painless


## Key Points:
* [Greedy Algorithm](https://ko.wikipedia.org/wiki/%ED%83%90%EC%9A%95_%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98)


### The result will be:
* Task Score		100%
* Correctness		100%
* Performance		100%
*/

import Foundation
var givenNumber = 4
var givenArray = [1, 2, 3, 4, 1, 1, 3]

// Given Vriables
public func solution(_ K : Int, _ A : inout [Int]) -> Int {
	
	var countRopes = 0
	var greaterThanK = 0
	
	for value in A {
		greaterThanK += value
		if greaterThanK >= K {
			countRopes += 1
			greaterThanK = 0
		}
	}
	
	return countRopes
}

// Test
print(solution(givenNumber, &givenArray))

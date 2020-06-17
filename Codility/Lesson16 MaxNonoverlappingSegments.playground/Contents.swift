/*:
# [Codility Lesson 16
Greedy algorithms:
MaxNonoverlappingSegments](https://app.codility.com/programmers/lessons/16-greedy_algorithms/max_nonoverlapping_segments/)

## Level: Painless


## Key Points:
* [Greedy Algorithm](https://ko.wikipedia.org/wiki/%ED%83%90%EC%9A%95_%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98)


### The result will be:
* Task Score		100%
* Correctness		100%
* Performance		100%
*/

import Foundation

// Given Vriables
var givenArray1 = [1, 3, 7, 9, 9]
var givenArray2 = [5, 6, 8, 9, 10]

public func solution(_ A : inout [Int], _ B : inout [Int]) -> Int {
	
	var maxNonOverlapping = 0
	let countA = A.count
	var end = -1
	
	for index in 0..<countA {
		if A[index] > end {
			maxNonOverlapping += 1
			end = B[index]
		}
	}
	return maxNonOverlapping
}

// Test
print(solution(&givenArray1, &givenArray2))

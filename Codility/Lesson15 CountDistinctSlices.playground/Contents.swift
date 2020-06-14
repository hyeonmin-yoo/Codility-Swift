/*:
# [Codility Lesson 15 Caterpillar method: CountDistinctSlices](https://app.codility.com/programmers/lessons/15-caterpillar_method/count_distinct_slices/)

## Level: Painless

## Key Points:
* Two-Pointer Algorithm

### The result will be:
* Task Score		100%
* Correctness		100%
* Performance		100%
*/

import Foundation

// Given Vriables
var givenNumbers = [3, 4, 5, 5, 2]
var givenInteger = 6


public func solution(_ M : Int, _ A : inout [Int]) -> Int {
	
	var record = Array(repeating: false, count: M + 1)
	var start = 0, end = 0
	var sliceCounter = 0
	
	while start < A.count && end < A.count {
		if record[A[start]] == false {
			sliceCounter += start - end + 1
			
			if sliceCounter > 1_000_000_000 {
				return 1_000_000_000
			}
			record[A[start]] = true
			start += 1
		} else {
			record[A[end]] = false
			end += 1
		}
	}
	
	return sliceCounter
}

// Test
print(solution(givenInteger, &givenNumbers))

/*:
# [Codility Lesson 10 Prime and composite numbers: MinPerimeterRectangle](https://app.codility.com/programmers/lessons/10-prime_and_composite_numbers/min_perimeter_rectangle/)

## Level: Painless

### The result will be:
* Task Score		100%
* Correctness		100%
* Performance		100%
*/

import Foundation

// Given Vriables
var givenArea = 30

public func solution(_ N : Int) -> Int {
	
	var index = 1
	var result = Int.max
	
	while index * index <= N {
		
		if N % index == 0 {
			result = min(result, 2 * (N / index + index))
		}
		index += 1
	}
	
	return result
}

// Test
print(solution(givenArea))

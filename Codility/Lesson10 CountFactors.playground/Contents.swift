/*:
# [Codility Lesson 10 Prime and composite numbers: CountFactors](https://app.codility.com/programmers/lessons/10-prime_and_composite_numbers/count_factors/)

## Key Point:
* The biggest count factor of N except N itself is equal or lesser than N / 2
* 1 is special number that result in itself, 1 * 1 = 1
* A factor must have its pair, except 1 and N itself

### The result will be:
* Task Score		100%
* Correctness		100%
* Performance		100%
*/

import Foundation

// Given Vriables
var givenNumber = 12


public func solution(_ N : Int) -> Int {
	var count = 0, index = 1
	while index * index <= N {
		if N % index == 0 {
			count += (index * index) == N ? 1 : 2
		}
		index += 1
	}
	
	return count
}

// Test
print(solution(givenNumber))

/*:
# [Codility Lesson 12 Euclidean algorithm: ChocolatesByNumbers](https://app.codility.com/programmers/lessons/12-euclidean_algorithm/chocolates_by_numbers/)

## Level: Painless

## Key Point:
* [Euclidean algorithm](https://en.wikipedia.org/wiki/Euclidean_algorithm#:~:text=In%20mathematics%2C%20the%20Euclidean%20algorithm,them%20both%20without%20a%20remainder.)

### The result will be:
* Task Score		100%
* Correctness		100%
* Performance		100%
*/

import Foundation

// Given Vriables
var numberOfChocolates = 10
var distance = 4

public func solution(_ N : Int, _ M : Int) -> Int {
	
	func gcd(a: Int, b: Int) -> Int {
		if a % b == 0 {
			return b
		} else {
			return gcd(a: b, b: a % b)
		}
	}
	return N / gcd(a: N, b: M)
}

// Test
print(solution(numberOfChocolates, distance))

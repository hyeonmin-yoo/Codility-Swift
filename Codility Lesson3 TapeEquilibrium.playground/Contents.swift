/*
Codility Lesson3 Time Complexity: TapeEquilibrium
Link: https://app.codility.com/programmers/lessons/3-time_complexity/tape_equilibrium/

Task Score	84%
Correctness	71%
Performance 100%
*/

// FIXME: Probably the problem is the begin number of the second iteration
import Foundation

let input = [3, 1, 2, 4, 3]

var firstPart = 0
var secondPart = 0

for number in input { secondPart += number }

var resuts = [Int]()
for value in input {
	firstPart += value
	secondPart -= value
	resuts.append(abs(firstPart - secondPart))
}

print(resuts.min()!)

/*
Codility Lesson1 Iteration: Binary Gap
Link: https://app.codility.com/programmers/lessons/1-iterations/binary_gap/

Task Score	100%
Correctness	100%
Total score	100%
*/

import Foundation

let input = 1041

let binaryString = String(input, radix: 2)
var isNumberOne = false
var binaryGaps = [Int]()
var zeros = ""

for character in binaryString {
	if character == "1" {
		isNumberOne = true
	} else {
		isNumberOne = false
		zeros.append(character)
	}
	
	if isNumberOne == true {
		binaryGaps.append(zeros.count)
		zeros = ""
	}
}

print(binaryGaps.max()!)

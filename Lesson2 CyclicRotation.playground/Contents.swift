/*
Codility Lesson2 Array: CyclicRotation
Link: https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/

Task Score	100%
Correctness	100%
Total score	100%
*/

import Foundation

var input = [5, 1, 4, 3, 7, 9, 2]
let inputNumber = 4

for _ in 0..<inputNumber {
	if let popedNumber = input.popLast() {
		input.insert(popedNumber, at: 0)
	}
}

print(input)

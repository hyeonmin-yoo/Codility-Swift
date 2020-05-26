/*
Codility Lesson3 Time Complexity: PermMissingElem
Link: https://app.codility.com/programmers/lessons/3-time_complexity/perm_missing_elem/

Task Score	100%
Correctness	100%
Performance 100%
Total score	100%
*/

import Foundation

var input = [9, 2, 8, 5, 7, 4, 1, 6]

let correctCount = input.count + 1
// 1 + 2 + 3 + 4 + 5 + 6 + ... + n == n(n + 1) / 2
let correctSum = correctCount * (correctCount + 1) / 2
var inputSum = 0


for number in input {
	inputSum += number
}
print(correctSum - inputSum)

/*
Codility Lesson3 Time Complexity: PermMissingElem
Link: https://app.codility.com/programmers/lessons/3-time_complexity/frog_jmp/

Task Score	100%
Correctness	100%
Performance 100%
Total score	100%
*/

import Foundation

var X = 10, Y = 85, D = 30

if X == Y { print(0) }

var jumpCount = 0

if (Y - X) % D == 0{
	jumpCount = (Y - X) / D
} else {
	jumpCount = (Y - X) / D + 1
}

print(jumpCount)

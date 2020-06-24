/*:
## Codility Lesson 1 Iteration:
# Binary Gap
[https://app.codility.com/programmers/lessons/1-iterations/binary_gap/](https://app.codility.com/programmers/lessons/1-iterations/binary_gap/)
*/
/*:
바이너리 갭(A binary gap)이란, 양의 정수 N을 이진수로 표현했을 때, 양쪽 끝이 1로 둘러쌓인 연속적인 0의 나열이고 0의 개수는 길이로 표현됩니다.

예를 들어, 숫자 9의 이진표현은 1001이며 길이 2의 바이너리 갭을 포함하고 있습니다. 숫자 529의 이진표현은 1000010001이고 두 개의 바이너리 갭을 포함하며 각각의 길이는 4와 3입니다. 숫자 20은 이진표현으로 10100이고 길이가 1인 하나의 바이너리 갭을 가지고 있습니다. 숫자 15의 경우 이진표현이 1111이므로 바이너리 갭을 가지고 있지 않습니다. 32 또한 이진표현이 100000이므로 바이너리 갭이 없습니다.

아래의 함수를 작성하십시오:

public func solution(_ N : Int) -> Int

위와 같이 양의 정수 N이 주어지면 함수는 가장 긴 바이너리 갭의 길이를 반환해야 합니다. 만약 N이 바이너리 갭을 포함하고 있지 않다면 함수는 0을 반환해야 합니다.

예를 들어, N = 1041이 주어지면 함수는 5를 반환해야 합니다. 1041의 이진 표현은 10000010001이므로 가장 긴 바이너리 갭은 5입니다. N = 32라면 N의 이진 표현은 100000이고 바이너리 갭이 없으므로 0을 반환해야 합니다.

아래의 조건을 가정하여 효율적인 알고리즘을 작성하십시오.
* N은 [1..2,147,483,647] 범위의 정수(integer)입니다.
*/
/*:
## Results:
* Task Score		100%
* Correctness		100%
* Total score		100%
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

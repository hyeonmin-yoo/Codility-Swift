/*:
## Codility Lesson2 Array:
# CyclicRotation
[https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/](https://app.codility.com/programmers/lessons/2-arrays/cyclic_rotation/)
*/
/*:
N의 정수로 구성된 배열 A가 주어집니다. 배열의 회전(rotation of an array)이란, 각 요소가 하나의 인덱스(index)만큼 오른쪽으로 이동하고 배열의 마지막 요소가 처음으로 이동함을 의미합니다. 예를 들어, `A = [3, 8, 9, 7, 6]`의 회전은 `[6, 3, 8, 9, 7]` 입니다. (각 요소는 하나의 인덱스만큼 오른쪽으로 이동하고 마지막 요소인 6은 첫번째 인덱스 위치로 이동)
*/
/*:
목표는 배열을 K번 만큼 회전시키는 것 입니다. 즉, 배열 A의 각 요소는 오른쪽으로 K번 만큼 이동합니다.

아래의 함수를 작성하십시오:

`public func solution(_ A : inout [Int], _ K : Int) -> [Int]`
*/
/*:
즉, N개의 정수로 구성된 배열 A와 정수 K가 주어지면 K번 만큼 회전된 배열 A를 반환합니다.

예를 들어 아래와 같은 배열 A와 정수 K가 주어진 경우,

`A = [3, 8, 9, 7, 6]`

`K = 3`

함수는 세 번의 회전이 이루어진 배열 `[9, 7, 6, 3, 8]`을 반환해야 합니다:

`[3, 8, 9, 7, 6] -> [6, 3, 8, 9, 7]`

`[6, 3, 8, 9, 7] -> [7, 6, 3, 8, 9]`

`[7, 6, 3, 8, 9] -> [9, 7, 6, 3, 8]`
*/
/*:
또 다른 예로,

`A = [0, 0, 0]`

`K = 1`

위와 같은 경우 함수는 배열 `[0, 0, 0]`을 반환해야 합니다.
*/
/*:
마지막 예로,

`A = [1, 2, 3, 4]`

`K = 4`

함수는 배열 `[1, 2, 3, 4]`를 반환해야 합니다.
*/
/*:
아래 사항을 가정하겠습니다.
- N과 K는 `[0..100]` 범위의 정수(integer)
- 배열 A의 각 요소의 범위는 `[-1,000..1,000]`이며 정수(integer)
*/
/*:
이 문제의 평가 기준은 정확성(correctness) 입니다. 성능(performance)은 평가 기준이 아닙니다.
*/
/*:
## Results:
* Task Score		100%
* Correctness		100%
* Total score		100%
*/

import Foundation

var givenArray = [3, 8, 9, 7, 6]
let givenNumber = 3

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
	for (index, value) in A.enumerated() {
		let newIndex = (index + K) % A.count
		A[newIndex] = value
	}
	return A
}

print(solution(&givenArray, givenNumber))

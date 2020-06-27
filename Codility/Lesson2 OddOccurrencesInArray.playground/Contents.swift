/*:
## Codility Lesson2 Array:
# OddOccurrencesInArray
[https://app.codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/](https://app.codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/)
*/
/*:
---
## Question
Nil이 아니며 N의 정수(integers)로 구성된 배열 A가 주어집니다. 이 배열은 홀수의 요소(elements)들을 포함하고 있으며, 배열의 각 요소는 같은 값을 가지는 다른 요소와 짝을 이룹니다. 여기서 하나의 요소는 짝을 이루지 못한채 남겨집니다.
*/
/*:
예를 들어, 배열 A가 아래와 같은 경우:

`A[0] = 9`

`A[1] = 3`

`A[2] = 9`

`A[3] = 3`

`A[4] = 9`

`A[5] = 7`

`A[6] = 9`

* 인덱스(index) `0`과 `2`는 같은 값 `9`를 가집니다,
* 인덱스 `1`과 `3`은 같은 값 `3`을 가집니다,
* 인덱스 `4`와 `6`은 같은 값 `9`를 가집니다,
* 인덱스 `5`는 짝을 이루지 못했고 값 `7`을 가집니다
*/
/*:
아래의 함수를 작성하십시오:

`public func solution(_ A : inout [Int]) -> Int`

N의 정수로 구성된 배열 A는 위의 조건을 충족합니다. 그리고 짝을 이루지 못한 요소의 값을 반환합니다.
*/
/*:
예를 들어, 주어진 배열 A가 아래와 같다면:

`A[0] = 9`

`A[1] = 3`

`A[2] = 9`

`A[3] = 3`

`A[4] = 9`

`A[5] = 7`

`A[6] = 9`

함수는 위의 예제에서 설명한 바와 같이, 값 `7`을 반환해야 합니다.
*/
/*:
아래의 조건을 가정하여 효율적인 알고리즘을 작성하십시오.
* N은 범위 `[1..1,000,000]`의 홀수 정수
* 배열 A의 각 요소의 범위는 `[1..1,000,000,000]`
* A의 요소 중 하나를 제외한 모든 값이 짝수번 등장
*/
/*:
---
## Key Point:
* Using XOR Operation
* Or using Set
*/
/*:
---
## Results:
* Task Score		100%
* Correctness		100%
* Total score		100%
*/
import Foundation

// Given variables
var givenArray = [9, 3, 9, 3, 9, 7, 9]

// Method 1 - Using Set
public func solution1(_ A : inout [Int]) -> Int {
	
	var set = Set<Int>()
	
	for value in A {
		if set.contains(value) {
			set.remove(value)
		} else {
			set.insert(value)
		}
	}
	
	return set.first!
}

print("The result of method 1: \(solution1(&givenArray))")

// Method 2 - XOR Operation
public func solution2(_ A : inout [Int]) -> Int {
	
    var noPair = 0

    for value in A {
        noPair ^= value
    }

    return noPair
}

print("The result of method 2: \(solution2(&givenArray))")

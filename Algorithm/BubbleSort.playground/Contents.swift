import UIKit
/**
# 거품 정렬 (Bubble Sort)

## 버블 정렬이란?
서로 인접한 두 원소를 검사하여 정렬하는 Algorithm

## 구체적인 개념
* 인접한 두 개의 레코드를 비교하여 오름/내림 차순의 순서대로 되어있지 않으면 위치를 교환
* 첫번째와 두 번째, 두번째와 세번째... 이와 같은 방식으로 (n - 1)과 마지막 자료를 비교 및 교환

## 장단점 (Pros & Cons)
### 장점
* 구현이 쉬움
### 단점
* 하나의 요소가 가장 왼쪽에서 가장 오른쪽으로 이동하기 위해서 다른 모든 요소들과 비교 및 교환(swap)해야 하므로 복잡

## References
* https://ko.wikipedia.org/wiki/거품_정렬
* https://gmlwjd9405.github.io/2018/05/06/algorithm-bubble-sort.html
*/

// 오름차순 정렬 (Ascending order)
var numbers = [1, 3, 9, 8, 7, 6, 2, 4, 5, 15, 13, 14, 11, 10, 12]
var temp = 0
var leftNumber = 0
var rightNumber = 0

for _ in 0..<numbers.count {
	for innerIndex in 0..<(numbers.count - 1) {
		leftNumber = numbers[innerIndex]
		rightNumber = numbers[innerIndex + 1]
		if leftNumber > rightNumber {
			temp = leftNumber
			numbers[innerIndex] = rightNumber
			numbers[innerIndex + 1] = temp
		}
	}
	print(numbers)
}

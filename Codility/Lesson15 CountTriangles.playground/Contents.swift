/*:
# [Codility Lesson 15 Caterpillar method: CountTriangles](https://app.codility.com/programmers/lessons/15-caterpillar_method/count_triangles/)

## Level: Painless

## Key Points:
* The condition of three sides to make a triangle
* Sort

### The result will be:
* Task Score		100%
* Correctness		100%
* Performance		100%
*/

import Foundation

// Given Vriables
var givenArray = [10, 2, 5, 1, 8, 12]

public func solution(_ A : inout [Int]) -> Int {
	
	let countA = A.count
    if countA < 3 {
        return 0
    }

    A.sort()
	
	var countTriangle = 0
    for outerIndex in 0..<countA - 2 {
		
        var countSmallerLegnth = 0
        for InnerIndex in outerIndex + 1..<countA - 1 {
			
            while countSmallerLegnth < countA
				&& A[outerIndex] + A[InnerIndex] > A[countSmallerLegnth] {
                countSmallerLegnth += 1
            }
            countTriangle += countSmallerLegnth - InnerIndex - 1
        }
    }

    return countTriangle
}

// Test
print(solution(&givenArray))

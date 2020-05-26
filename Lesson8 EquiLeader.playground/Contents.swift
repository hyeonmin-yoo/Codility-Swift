/*
Codility Lesson 8 Leader: EquiLeader
Link: https://app.codility.com/programmers/lessons/8-leader/equi_leader/

Task Score	100%
Correctness	100%
Performance 100%
*/

import Foundation

// Given Vriables
var givenNumbers = [4, 3, 4, 4, 4, 2]


public func solution(_ A : inout [Int]) -> Int {
	
	var leader = 0
	var leaderCount = 0
	for number in A {
		if leaderCount == 0 {
			leader = number
		}
		if leader == number {
			leaderCount += 1
		} else {
			leaderCount -= 1
		}
	}
	
	leaderCount = 0
	for number in A {
		if number == leader {
			leaderCount += 1
		}
	}
	var equiLeaders = 0
	var leftLeadersCount = 0
	var rightLeadersCount = leaderCount
	for index in 0..<A.count {
		if A[index] == leader {
			leftLeadersCount += 1
			rightLeadersCount -= 1
		}
		if leftLeadersCount > (index + 1) / 2
			&& rightLeadersCount > (A.count - index - 1) / 2 {
			equiLeaders += 1
		}
	}
	return equiLeaders
}

// Test
print(solution(&givenNumbers))

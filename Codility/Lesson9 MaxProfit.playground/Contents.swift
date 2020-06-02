/*
Codility Lesson 9 Leader: MaxProfit
Link: https://app.codility.com/programmers/lessons/9-maximum_slice_problem/max_profit/

Task Score	100%
Correctness	100%
Performance 100%
*/

import Foundation

// Given Vriables
var givenPrices = [23171, 21011, 21123, 21366, 21013, 21367]

public func solution(_ A : inout [Int]) -> Int {
	var maxProfit = 0
	var cheapestPrice = A.first ?? 0
	for price in A {
		cheapestPrice = min(cheapestPrice, price)
		maxProfit = max(maxProfit, price - cheapestPrice)
	}
	
	return maxProfit
}

// Test
print(solution(&givenPrices))

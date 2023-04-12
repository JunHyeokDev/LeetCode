class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        
        var dp = Array(repeating : 1 , count : nums.count )
        var len = nums.count-1
        
        for i in 0...len {
            for j in 0...i {
                if nums[i] > nums[j] {
                    dp[i] = max(dp[i] , dp[j] + 1)
                }
            }
        }
        return dp.max()!
    }
}

// Intuition

// Main point of DP is...
// utilize what we've already calculated.

// dp[i] = max(dp[i] , dp[j] + 1)
// In this one line of code, the true magic happens.

// As we traverse nested loop,
// We account DP tables that we calculated before.

// Since longest Subsequence is 'strictly increasing subsequence'
// we cna just check this condition - if nums[i] > nums[j] -

// If the condition is right, then execute the main logic.



//  Wrong cases 
//  [1,3,6,7,9,4,10,5,6]

// Oh.. We need to return the maxValue, not the last index of dpo


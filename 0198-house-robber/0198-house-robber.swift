class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count < 3 {
            return nums.max()!
        }
        
        var len = nums.count
        var dp = Array(repeating : 0 , count : len)
        
        dp[0] = nums[0]
        
        if nums[1] > nums[0] {
            dp[1] = nums[1]
        } else {
            dp[1] = nums[0]
        }
        
        
        for i in 2..<len {
            dp[i] = max(nums[i] + dp[i-2] , dp[i-1])
        }
        
 
        return dp.max()!
    }
}
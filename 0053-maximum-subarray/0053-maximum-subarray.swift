class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        
        var (sum, maxVal) = (0, nums[0])
        
        for num in nums {
            sum += num 
            maxVal = max(sum, maxVal)
            
            if sum < 0 {
                sum = 0
            }
        }
        
        return maxVal
    }
}
class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        
        var (ret, minVal, maxVal) = (Int.min,1,1)
        
        for num in nums {
            if num < 0 {
                (minVal, maxVal) = (maxVal, minVal)
            }
            // Reason why we are storing minVal is ...
            // when num is minus, It's potential biggest value
            // when num account next minus value.
            maxVal = max(maxVal * num , num)
            minVal = min(minVal * num , num)
            ret = max(ret,maxVal)
        }
        return ret
    }
}
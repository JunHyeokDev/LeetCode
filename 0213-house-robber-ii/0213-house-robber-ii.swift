class Solution {
    func rob(_ nums: [Int]) -> Int {
        
        var dp1 = Array(repeating : 0 , count : nums.count-1)
        var dp2 = Array(repeating : 0 , count : nums.count-1)
        var tmpMax1 = 0
        var tmpMax2 = 0
        
        var nums1 = nums
        var nums2 = nums
        
        nums1.removeFirst() 
        nums2.removeLast()
        
        if nums.count < 4 {
            return nums.max()!
        }
        
        for i in 0...1 {
            if tmpMax1 < nums1[i] {
                tmpMax1 = nums1[i]
            }
            if tmpMax2 < nums2[i] {
                tmpMax2 = nums2[i]
            }
            
            dp1[i] = max(tmpMax1,nums1[i])
            dp2[i] = max(tmpMax2,nums2[i])
        }
        
        for i in 2...nums.count - 2 {
            dp1[i] = max( dp1[i-1] , dp1[i-2] + nums1[i] )
            dp2[i] = max( dp2[i-1] , dp2[i-2] + nums2[i] )
        }
        
        print(dp1)
        print(dp2)
        
        return dp1[dp1.count-1] > dp2[dp1.count-1] ? dp1[dp1.count-1] : dp2[dp1.count-1]
    }
}
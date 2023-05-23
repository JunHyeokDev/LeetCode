class Solution {
    func kthLargestNumber(_ nums: [String], _ k: Int) -> String {
        
        
        var nums = nums
        
        nums.sort { (no1, no2) -> Bool in 
            if no1.count == no2.count {
                return no1 > no2
            }
            return no1.count > no2.count
        }
        
        return nums[k-1]
        
    }
}
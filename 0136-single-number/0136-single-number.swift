class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var nums = nums
        
        if nums.count < 3 {
            return nums[0]
        }
        
        nums.sort()
        
        for i in stride(from: 0 , to : nums.count-1, by : 2) {
            if nums[i] != nums[i+1] {
                return nums[i]
            }
        }
        
        return nums[nums.count-1]
    }
}
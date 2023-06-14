class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        
        
        let nums = nums.sorted()
        return nums[nums.count-k]
        
        
    }
}
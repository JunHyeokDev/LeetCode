class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        let mid = (left + right) / 2
        
        if nums[mid] == target {
            var start = mid
            var end = mid
            
            // Find the leftmost index of target
            while start > 0 && nums[start - 1] == target {
                start -= 1
            }
            
            // Find the rightmost index of target
            while end < nums.count - 1 && nums[end + 1] == target {
                end += 1
            }
            
            return [start, end]
        }
        
        if nums[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    
    return [-1, -1]
}
}


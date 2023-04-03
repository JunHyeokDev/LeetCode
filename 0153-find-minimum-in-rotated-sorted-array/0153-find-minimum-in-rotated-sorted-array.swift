class Solution {
    func findMin(_ nums: [Int]) -> Int {
        // Goal is to find the min Val
        // 'Just find' the lowest value in the Array.
        
        var low = 0
        var high = nums.count-1
        var mid = 0
        
        if nums.count == 1 {
            return nums[0]
        }
        
        while low <= high {
            mid = low + (high-low)/2
            
            if mid == 0 {
                if nums[mid] < nums[mid+1] {
                    return nums[mid]
                } else {
                    return nums[mid+1]
                }
            }
            
            if nums[mid] < nums[mid-1] {
                return nums[mid]
            }
            
            if nums[mid] < nums[high] {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        print("where are u 2")
        return nums[mid]
    }
}

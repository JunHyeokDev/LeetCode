class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        
        var low = 0
        var high = nums.count - 1
        var mid = low+(high-low)/2
        if nums[mid] == target {
                return mid
        }
        
        print("--Step--")
        print("Low : \(low) Mid : \(mid) high : \(high)")
        
        while low < high {
            
             print("--Step--")
            // if it is , then it's linear now
            if nums[mid] < nums[high] {
                if nums[mid] < target && target <= nums[high] {
                    low = mid + 1
                } else {
                    high = mid - 1
                }
                print("Upper")
            } else {
                if nums[low] <= target && target <= nums[mid] {
                    high = mid - 1
                } else {
                    low = mid + 1
                }
                print("Down")

            }
            mid = low+(high-low)/2
            
            if nums[mid] == target {
                return mid
            }
            print("Low : \(low) Mid : \(mid) high : \(high)")
        }
        return -1
    }
}
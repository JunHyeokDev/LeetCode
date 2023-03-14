class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count - 1
    var mid = 0
    while low <= high {
        mid = low+(high-low)/2
        
        if nums[mid] == target {
            return mid
        }
        
        else {
            if nums[mid] < target {
                low = mid + 1
            }
            else {
                high = mid - 1
            }
        }
        
    }
    
    if nums[0] > target {
        return 0
    }
    else if nums[mid] < target {
        return mid+1
    }
    else if nums[nums.count - 1] < target {
        return mid + 1
    }
    return mid
    }
}




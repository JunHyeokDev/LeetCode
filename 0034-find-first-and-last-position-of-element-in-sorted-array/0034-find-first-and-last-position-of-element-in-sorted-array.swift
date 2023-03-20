class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        
        let res = binarySearch(nums,target)
        var low = -1
        var high = 1
        
        
        if res == -1 {
            return [-1,-1]
        } else {
             while true {
            if res+high <= nums.count-1 {
                if nums[res+high] == target{
                    high += 1
                } else {
                    break
                }
            } else {
                break
            }
        }
        while true {
            if res+low >= 0 {
                if nums[res+low] == target {
                    low -= 1
                } else {
                    break
                }
            } else {
                break
            }
        }

        return [res+low+1,res+high-1]
        }
        
       
    }
}

func binarySearch(_ nums: [Int], _ target: Int) -> Int {
    var low = 0
    var high = nums.count - 1
    var mid = 0
    
    while low <= high {
            
            mid = low + (high-low)/2
            if nums[mid] == target {
                return mid
            } 
            
            else if nums[mid] < target {
                low = mid + 1
            } else if nums[mid] >= target {
                high = mid - 1
            }
        }
    return -1
}


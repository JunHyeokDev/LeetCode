class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
            var stack = [Int]()
    var result = [Int]()
    
    for i in 0..<nums.count {
        stack.append(nums[i])
    }

    for j in stack {
        result.append(nums[j])
    }
    
    return result
    }
}
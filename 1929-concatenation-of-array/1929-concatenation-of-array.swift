class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {

    var stack = [Int]()
    
    for i in 0..<nums.count {
        stack.append(nums[i])
    }
    
    for i in 0..<nums.count {
        stack.append(nums[i])
    }
    
    return stack
    
}
}
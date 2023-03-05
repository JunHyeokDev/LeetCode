class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        
        var tmp = nums
        
        
        for i in 1...nums.count-1 {
            tmp[i] = tmp[i-1] + tmp[i]
        }
        
        return tmp
    }
}
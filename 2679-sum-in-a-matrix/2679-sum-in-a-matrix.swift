class Solution {
    func matrixSum(_ nums: [[Int]]) -> Int {
        
        var sum = 0
        
        var nums = nums
        
        var sortednums = nums.map { $0.sorted() }
        print(sortednums)
        for j in 0..<nums[0].count {
            var maxVal = 0
            for i in 0..<nums.count {
                maxVal = max(maxVal,sortednums[i].popLast()!)
            }
            print(maxVal)
            sum += maxVal
        }
        
        return sum
    }
}
class Solution {
    func heightChecker(_ heights: [Int]) -> Int {
        var height = heights.sorted()
        var cnt = 0
        
        for i in 0..<heights.count {
            if height[i] != heights[i] {
                cnt += 1
            }    
        }
        
        return cnt
    }
}
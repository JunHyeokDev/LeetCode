class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        
        var cnt = 0
        
        for i in grid {
            
            for j in 0..<i.count {
                if i[j] < 0 {
                    cnt += i.count-j
                    break
                }
            }
        }
        
        
        return cnt
    }
}
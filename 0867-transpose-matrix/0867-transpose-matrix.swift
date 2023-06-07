class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        
        let rows = matrix.count 
        let cols = matrix[0].count 
        
        
        var res = Array(repeating : Array(repeating : 0 , count : rows), count : cols)
        
        for j in 0..<cols {
            for i in 0..<rows {
                res[j][i] = matrix[i][j]
            }
        }
        
        return res
    }
}
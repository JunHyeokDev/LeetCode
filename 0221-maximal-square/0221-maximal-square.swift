class Solution {
    func maximalSquare(_ matrix: [[Character]]) -> Int {
        
        
        let rows = matrix.count
        let cols = matrix[0].count
        var dp = Array(repeating: Array(repeating: 0, count: cols+1), count: rows+1 )
        
        var maxVal = 0
        
        for j in 0..<rows {
            for i in 0..<cols {
                if matrix[j][i] == "1"{
                    dp[j+1][i+1] = min(dp[j+1][i], dp[j][i+1], dp[j][i]) + 1
                    maxVal = max(maxVal, dp[j+1][i+1])
                }
            }
        }
        
        
        print(maxVal)
        
        return maxVal*maxVal
        
    }
}
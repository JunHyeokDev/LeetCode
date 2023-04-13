class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        
        
        var arrCol = Array(text1)
        var arrRow = Array(text2)
        
        let cols = arrCol.count
        let rows = arrRow.count
        var maxVal = 0
        
        var dp = [[Int]](repeating : [Int](repeating : 0 , count : cols + 2), count : rows + 2)
        
        for row in 1...rows {
            for col in 1...cols {
                if arrRow[row-1] == arrCol[col-1] {
                   dp[row][col] = dp[row-1][col-1] + 1
                }
                else {
                    dp[row][col] = max(dp[row-1][col] , dp[row][col-1])
                }
                maxVal = max(maxVal,dp[row][col])
            }
        }
        
        return maxVal
        
    }
}
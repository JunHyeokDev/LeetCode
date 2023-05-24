class Solution {
    func longestIncreasingPath(_ matrix: [[Int]]) -> Int {
        
        
        
        let rows = matrix.count
        let cols = matrix[0].count
        var maxVal = 0
        
        let dy = [0,0,-1,1]
        let dx = [1,-1,0,0]
        
        var dp = Array(repeating : Array(repeating : 0 , count : cols ) , count : rows )
        
        var board = matrix
        
        func search(_ dp : inout [[Int]], _ row : Int , _ col : Int) -> Int {
            if dp[row][col] != 0 {
                return dp[row][col]
            }
            
            dp[row][col] = 1
            
            for i in 0...3 {
                let ny = row + dy[i]
                let nx = col + dx[i]
                
                if 0 <= ny && ny < rows && 0 <= nx && nx < cols {
                    if matrix[row][col] < matrix[ny][nx] {
                        dp[row][col] = max(dp[row][col], search(&dp,ny,nx) + 1)
                    }
                }
            }
            return dp[row][col]
        }
        for j in 0..<rows {
            for i in 0..<cols {
                maxVal = max(maxVal,search(&dp,j,i))
            }
        }
        return maxVal   
    }
}
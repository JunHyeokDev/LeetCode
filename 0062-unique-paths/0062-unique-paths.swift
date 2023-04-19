class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        
        var dp = Array( repeating : Array(repeating : 0 , count : n) , count : m  )
        //var table = Array( repeating : Array(repeating : 0 , count : n) , count : m  )

        var dx = [1,0]
        var dy = [0,1]
        
        if m == 1 && n == 1 {
            return 1
        }
        
        // Main Logic
        func dfs(_ y : Int, _ x: Int) -> Int {  
            if dp[y][x] != 0 {
                return dp[y][x]
            }
            if y == m-1 && x == n-1 {
                return 1
            }
            
            for i in 0..<2 {
                var ny = y + dy[i]
                var nx = x + dx[i]
                
                if (0 <= ny && ny < m) && (0 <= nx && nx < n) {
                    dp[y][x] += dfs(ny,nx) // That's the power of stack!!! 
                } 
            }
            
            return dp[y][x]
        }
        
        dfs(0,0)
        
        return dp[0][0]
    }
}
class Solution {
    func fib(_ n: Int) -> Int {
        
        if n == 0 {
            return 0
        } else if n == 1 {
            return 1
        }
        
        var dp = Array(repeating : 0 , count : n+1)
        dp[1] = 1
        
        for i in 2...n {
            dp[i] = dp[i-1] + dp[i-2]
        }
        
        return dp[n]
        
        
    }
}
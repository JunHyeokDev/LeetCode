class Solution {
    func climbStairs(_ n: Int) -> Int {
        var dp = Array(repeating: 0, count: n+1)
        
        // Apple doc, I can get a hint from it.
        //var board = [Int](repeating: 0, count: finalSquare + 1)
        
        if n <= 2 {
            return n
        }
        
        dp[0] = 0
        dp[1] = 1
        dp[2] = 2
        
        for i in 3...n {
            dp[i] = dp[i-1] + dp[i-2]
        }
        
        // Just think it deeply, It's so obvious that we can get current stepts
        // by adding previous steps...
        
        
        return dp[n]
    }
}

// Another way to solve the problem. but the logic and how the algorithm a
func sol(_ n : Int) -> Int {
    print("Hello : \(n)")
    if n == 2 {
        return 2
    }
    else if n == 3 {
        return 3
    }
    
    else {
        return sol(n-1) + sol(n-2)
    }
}
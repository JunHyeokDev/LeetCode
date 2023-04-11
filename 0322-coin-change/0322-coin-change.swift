class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        
        var dp = Array(repeating : Int.max-1, count : amount + 1)
        var coins = coins
        
        if amount == 0 {
            return 0
        } 
        
        coins.sort()
        
        dp[0] = 0
        
        guard let maxCoin = coins.max() else { return -1 }
        
        for i in 1...amount {
            for coin in coins {
                if (coin <= i) {
                    dp[i] = min( dp[i-coin] + 1, dp[i]) 
                }
            }
        }
        print(dp)
        return  dp[amount] <= amount ? dp[amount] : -1
    }
}

// MARK: - Intuition

// Category : Dynamic Programming


// Approach

// Fristly, We need to check the basic divide. (using denominations)
// Let's see we can divie amount by using current current (Funny, right? haha I love daddy joke)...
// We have [1,2,5] coins, so 
// dp[0] = 0
// dp[1] = 1
// dp[2] = 1
// dp[3] = dp[2] + dp[1]
// dp[4] = dp[2] + 1 // becuase we have coin '2'
// dp[5] = 1

// Now, all we have to do is utilize what we've calcuated so far.
// dp[6] = dp[5] + dp[1]
// dp[7] = dp[5] + dp[2]
// dp[8] = dp[5] + dp[3]  ( *Note that dp[3] is dp[2] + dp[1] ) 
// dp[9] = dp[5] + dp[4] 
// and so on...

// Edge case 
// When it comes to one element in Array... 
// When amount is Zero so we don't even need to calculate.

// Conclusion
// Once we calculate until the largest unit of given denominations, 
// All we have to do is just sum it up until we will reach the amount!


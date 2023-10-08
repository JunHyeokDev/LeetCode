class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var max = 0

        if prices.count == 1 {
            return 0
        }
        
        for i in 1...prices.count-1 {
            if prices[i-1] < prices[i] {
                max += prices[i] - prices[i-1]
            }
        }
        return max
    }
}
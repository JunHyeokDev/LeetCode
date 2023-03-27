class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buy = prices[0]
        var maxVal = 0
        let len = prices.count - 1
        
        if len == 0 {
            return 0
        }
        
        for i in 1...len {
            if prices[i] < buy {
                buy = prices[i]
            }    
            maxVal = max(maxVal, prices[i] - buy)

        }
        return maxVal
    }
}
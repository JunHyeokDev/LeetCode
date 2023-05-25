class Solution {
    func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
        
        var res = 0
        var next = 0
        
        if timeSeries.count == 1 {
            return duration
        }
        
        for i in 0..<timeSeries.count - 1 {
            if timeSeries[i] + duration <= timeSeries[i+1] {
                res += duration
            } else {
                res += timeSeries[i+1] - timeSeries[i]
            }
        }
        return res + duration
    }
}
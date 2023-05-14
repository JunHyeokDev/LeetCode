class Solution {
    func mostPoints(_ questions: [[Int]]) -> Int {
        
        var maxVal = 0
        
        var questions = questions
        questions.reverse()
        print(questions)
        var dp = Array(repeating : 0 , count : questions.count)
        dp[0] = questions[0][0]
        
        if questions.count == 1 {
            return dp[0]
        }
        
        for i in 1..<questions.count {
            
            let tmp = i - questions[i][1] - 1
            print(i)
            if tmp >= 0 {
                dp[i] = max(dp[i-1],dp[tmp]+questions[i][0])
            } else {
                dp[i] = max(questions[i][0],dp[i-1])
            }
            
            
        }
        
        
        print(dp.max())
        
        return dp.max()!
        
    }
}
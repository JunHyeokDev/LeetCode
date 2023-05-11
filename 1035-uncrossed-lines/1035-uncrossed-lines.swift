class Solution {
    func maxUncrossedLines(_ nums1: [Int], _ nums2: [Int]) -> Int {
       
        
        var num1 = nums1
        var num2 = nums2
        var maxVal = 0
        var dp = [[Int]](repeating : [Int](repeating : 0 , count : num2.count + 2) , count : num1.count+2 )
        
        for row in 1...num1.count {
            for col in 1...num2.count {
                if num1[row-1] == num2[col-1] {
                    dp[row][col] = dp[row-1][col-1] + 1
                } else {
                    dp[row][col] = max(dp[row-1][col] , dp[row][col-1])
                }
                maxVal = max(maxVal,dp[row][col])
            }
        }
        
        for i in dp {
            print(i)
        }
        print(maxVal)
        
        return maxVal
    }
}
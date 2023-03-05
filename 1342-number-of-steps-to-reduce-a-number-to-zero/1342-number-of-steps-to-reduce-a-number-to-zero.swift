class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        
        
        var number = num
        var cnt = 0
        
        while number != 0 {
            
        if number % 2 == 0 {
            number /= 2
            cnt += 1
        } else {
            number -= 1
            cnt += 1
        }
                
        }

        return cnt
    }
}
class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let len = nums.count
        var isTwoZero = 0
        var total = 1
        var ret = [Int]()
        
        
        
        for i in 0...len-1 {
            if nums[i] == 0 {
                isTwoZero += 1
            } else {
                total = nums[i] * total
            }
            
            if isTwoZero == 2 {
                return [Int](repeating: 0, count: len)
            }
        }
        
        if isTwoZero == 1 {
            for i in 0...len-1 {
            if nums[i] == 0 {
                ret.append(total)
            } else {
                ret.append(0)
            }
        }
            return ret
        }
        
        for i in 0...len-1 {
            if nums[i] != 0 {
                ret.append(total/nums[i])
            } else {
                ret.append(0)
            }
        }
        
        return ret
    }
}
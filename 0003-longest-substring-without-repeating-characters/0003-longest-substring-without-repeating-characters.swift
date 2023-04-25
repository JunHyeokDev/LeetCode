
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        var charSet = Set<String>()
        var left = 0
        var res = 0
        var arr = Array(s)
        
        for right in 0..<s.count {
            while true {
                if charSet.contains(String(arr[right])) {
                    charSet.remove(String(arr[left]))
                    left += 1
                } else {
                    break
                }
            }
            charSet.insert(String(arr[right]))
            res = max(res, right - left + 1)
        }
        return res
    }
}

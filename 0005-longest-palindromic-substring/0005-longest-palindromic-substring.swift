class Solution {
   func longestPalindrome(_ s: String) -> String {
       
    if s.count < 1 {
        return ""
    }
    
    var s = Array(s)

    var start = 0
    var end = 0

    for i in 0..<s.count {
        var len1 = expandFromMiddle(s, i, i)
        var len2 = expandFromMiddle(s, i, i+1)
        var len = max(len1,len2)
        if (len > end - start) {
            start = i - ((len - 1) / 2)
            end = i + (len / 2)
        }
    }
    
    let charSlice = s[start...end]
    let substring = String(charSlice)

    return substring
   }
    
    func expandFromMiddle(_ s : [Character], _ left : Int, _ right : Int) -> Int {
    var left = left
    var right = right
    
    if left > right {
        return 0
    }
    
    while (left >= 0 && right < s.count && s[right] == s[left]) {
        left -= 1
        right += 1
    }
    
    return right - left - 1
    }
}
class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var tmp = s.split(separator: " ")
        
        return tmp[tmp.count-1].count
    }
}
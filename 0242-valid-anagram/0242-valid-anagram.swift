class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        
        var first = Array(s)
        var second = Array(t)
        
        first = first.sorted()
        second = second.sorted()
        
        print(first)
        print(second)
        
        var len = 0 
        
        if first.count > second.count {
            len = second.count - 1
        } else {
            len = first.count - 1
        }
        
        for i in 0...len {
            if first[i] != second[i] {
                return false
            }
        }
        if first.count != second.count {
            return false
        }
        return true
    }
}
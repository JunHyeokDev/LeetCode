class Solution {
    func findRepeatedDnaSequences(_ s: String) -> [String] {
        
        if s.count < 10 {
            return []
        }
        
        let len = s.count - 10
        let arr = Array(s)
        var container = Set<String>()
        var res = Set<String>()
        
        for i in 0...len {
            let tmp = String(arr[i..<i+10])
            if !container.contains(tmp) {
                container.insert(tmp)
            } else {
                res.insert(tmp)
            }
        }
        
        let ret = Array(res)
        return ret
        
        
    }
}
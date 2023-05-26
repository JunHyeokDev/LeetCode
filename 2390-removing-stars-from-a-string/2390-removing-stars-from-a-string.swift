class Solution {
    func removeStars(_ s: String) -> String {
        
        
        let a = String(s.reversed())
        var arr = Array(a)
        var cnt = 0
        
        
        for i in 0..<arr.count {
            if cnt >= 1 {
                if arr[i] == "*" {
                    cnt += 1
                    arr[i] = " "
                    continue
                }
                
                arr[i] = " "
                cnt -= 1
                continue
            }
            
            if arr[i] == "*" {
                cnt += 1
                arr[i] = " "
            }
        }
        
        let newarr = arr.map{ String($0) }
        let tmp = newarr.joined(separator: "")
        let res = tmp.replacingOccurrences(of: " ", with: "")       
        let reversedRes = res.reversed()
        
        return String(reversedRes)
    }
}
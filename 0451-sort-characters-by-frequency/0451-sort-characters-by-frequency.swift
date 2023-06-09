class Solution {
    func frequencySort(_ s: String) -> String {
        
        var dict = [Character:Int]()
        var res = ""
        
        for i in s {
            dict[i, default: 0] += 1
        }
        
        let sortedDict = dict.sorted(by: {(e1,e2) in 
            return e1.value > e2.value                   
        })
        
        
        
        for (key,val) in sortedDict {
            for i in 0..<val {
                res += String(key)
            }
        }
        
        print(res)
        
        return res
        

    }
}
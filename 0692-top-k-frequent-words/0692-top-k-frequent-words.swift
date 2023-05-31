class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        
        var dict : [String:Int] = [String:Int]()
        
        for i in words {
            dict[i, default: 0] += 1
        }
        
        let sortedArray = dict.sorted(by: { (e1,e2) in
            if e1.value == e2.value {
                return e1.key < e2.key // To sort it as Alphabetically 
                //
            } else {
                return e1.value > e2.value
            }
        })
        
        print(sortedArray)
        let res = sortedArray.prefix(k).map{ $0.key }
        print(res)
        return res
        
    }
}
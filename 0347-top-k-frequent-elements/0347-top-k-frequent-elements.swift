class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        
        var container : [Int:Int] = [:]
        var res : [Int] = []
        var cnt = 0
        
        for i in nums {
            container[i, default: 0] += 1
        }
        
        let sortedDict = container.sorted { $0.value > $1.value }
        
        for i in 0..<k {
            res.append(sortedDict[i].key)
        }

        
        return res
    }
}
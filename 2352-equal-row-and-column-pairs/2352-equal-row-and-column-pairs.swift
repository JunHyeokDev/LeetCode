class Solution {
    func equalPairs(_ grid: [[Int]]) -> Int {
        
        var grid = grid
        var strContainer1 : [String] = []
        var strContainer2 : [String] = []
        var dict1 : [String:Int] = [:]
        var dict2 : [String:Int] = [:]
        var sum = 0
        
        for i in grid {
            var tmp = i.map{String($0)}.joined(separator: ",")
            strContainer1.append(tmp)
        }
        
        for j in 0..<grid.count {
            var tmp: String = ""
            for i in 0..<grid.count {
                
                tmp += String(grid[i][j])
                if i != grid.count - 1 {
                    tmp += ","
                }
            }
            strContainer2.append(tmp)
        }
        
        print(strContainer1)
        print(strContainer2)
        
        var countDict: [String:Int] = [:]
        
        for i in strContainer1 {
            dict1[i, default: 0] += 1
        }
        for i in strContainer2 {
            dict2[i, default: 0] += 1
        }
        
        print(dict1)
        print(dict2)
        
        for (key, value) in dict1 {
            if let matchingValue = dict2[key] {
                sum += value * matchingValue
            }
        }
        
        //let res = countDict.values.filter { $0 > 1 }.count
        
        return sum
    }
}
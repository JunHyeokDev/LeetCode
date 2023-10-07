class Solution {
    func destCity(_ paths: [[String]]) -> String {
    var destin : [String] = []
    var depart : [String] = []
    let pathsLen = paths.count-1
    
    for i in 0 ... pathsLen {
        depart.append(paths[i][0])
        destin.append(paths[i][1])
    }
    
    print(depart)
    print(destin)
    
    for i in 0 ... pathsLen {
        if !depart.contains(destin[i]) {
             return destin[i]
        }
    }
    return ""
    }
}
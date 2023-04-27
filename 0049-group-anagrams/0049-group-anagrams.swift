class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
    //var dict: [String: [String]] = [:]
    var dict = [String: [String]]()
    
    for str in strs {
        let sortedStr = String(str.sorted())
        
        if var exists = dict[sortedStr] {
            exists.append(str)
            dict[sortedStr] = exists 
        } else {
            dict[sortedStr] = [str]
        }   
    }
        return Array(dict.values)
        
    }
}
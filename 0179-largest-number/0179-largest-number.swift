class Solution {
    func largestNumber(_ nums: [Int]) -> String {
        
        let strArray = nums.map{String($0)}.sorted{ $0 + $1 > $1 + $0 }
        if strArray[0] == "0" {
            return "0"
        }
        
        
        
        
        return strArray.reduce("",+)
    }
}

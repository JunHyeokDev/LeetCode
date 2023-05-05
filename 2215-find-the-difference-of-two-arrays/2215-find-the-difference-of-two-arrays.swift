class Solution {
    func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
        
        var res1 : Set = Set(nums1)
        var res2 : Set = Set(nums2)
        
        
        var tmp1 = res1.subtracting(res2)
        var tmp2 = res2.subtracting(res1)
                
        return [Array(tmp1),Array(tmp2)]
        
    }
}
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let sortedArray = nums.sorted()
        var idx = 0
        

        while idx < sortedArray.count-1 {
            if sortedArray[idx] == sortedArray[idx+1] {
                return true
            } else {
                idx += 1
            }
        }
        return false
    }
}
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        var tmpContainer = [Int]()
        var k = k
        let step = k % nums.count
        if step == 0 { 
            return
        }
        
        for _ in 1...step {
            if let tmp = nums.popLast() {
                tmpContainer.append(tmp)
            }
        }
        
        for i in tmpContainer {
            nums.insert(i,at:0)
        }
    }
}
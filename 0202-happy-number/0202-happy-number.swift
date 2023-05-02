class Solution {
    func isHappy(_ n: Int) -> Bool {
        
        var arr = String(n).compactMap { Int(String($0)) }
        var sum = 0
        var overAndOver : [Int] = [Int]()
        
        while sum != 1 {
            sum = arr.map {$0 * $0}.reduce(0,+)
            
            if !overAndOver.contains(sum) {
                overAndOver.append(sum)
            } else {
                return false
            }
            
            arr = String(sum).compactMap {Int(String($0))}
        }
        
        return true
    }
}
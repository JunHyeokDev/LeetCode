class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var hashmap = [Character:Int]()
        
        
        for char in magazine {
            if let count = hashmap[char]  {
                hashmap[char] = count + 1
            } else {
                hashmap[char] = 1
            }
        }
        
        for char in ransomNote {
            if let count = hashmap[char] , count > 0 {
                hashmap[char] = count - 1
            } else {
                return false
            }
        }
        return true
    }
}
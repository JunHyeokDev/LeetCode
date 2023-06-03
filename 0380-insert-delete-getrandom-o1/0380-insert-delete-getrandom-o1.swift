
class RandomizedSet {
    
    var set: Set<Int> = []
    
    init() {
        
    }
    
    func insert(_ val: Int) -> Bool {
        return set.insert(val).inserted == false ? false : true
    }
    
    func remove(_ val: Int) -> Bool {
        return set.remove(val) == nil ? false : true 
    }
    
    func getRandom() -> Int {
        return set.randomElement() ?? 0
    }
}

/**
 * Your RandomizedSet object will be instantiated and called as such:
 * let obj = RandomizedSet()
 * let ret_1: Bool = obj.insert(val)
 * let ret_2: Bool = obj.remove(val)
 * let ret_3: Int = obj.getRandom()
 */
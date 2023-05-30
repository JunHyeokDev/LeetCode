class Solution {
    func romanToInt(_ s: String) -> Int {
    
        var str = s
        var sum = 0
        let preCheck = ["IV" : 4, "IX" : 9, "XL" : 40, "XC" : 90, "CD" : 400, "CM" : 900]
        let dict = ["I" : 1, "V" : 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000, ]
    
    while str.count != 0 {
        print(str)
        let pre = str.prefix(2)
        print("pre : \(pre)")
        if let possible = preCheck[String(pre)] {
            print("2str : \(possible)")
            sum += possible
            str.removeFirst()
            str.removeFirst()
        } else {
            print("else is possible?")
            let val = dict[String(str.removeFirst())]
            sum += val!
        }
    }
    
    return sum
        
        
    }
}
class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        
    var sum = [Int](repeating : 0 , count : num1.count + num2.count)
     
    for (j,tmp1) in num1.enumerated().reversed() {
        for (i,tmp2) in num2.enumerated().reversed() {
            guard let val1 = Int(String(tmp1)) , let val2 = Int(String(tmp2)) else { return "" }
            // [0, 0, 0, 1, 5]
            // if 3 * 5 is 15.. then
            // upper is 1
            // current is 5
            let upper = j + i
            let current = j + i + 1
            let val = val1 * val2 + sum[current]
            //print("\(sum) || \(val1 * val2)")
            sum[upper]  += val / 10
            sum[current] = val % 10
            
        }
    }
        
    while let firstElem = sum.first, firstElem == 0 { sum.removeFirst() }
    let res = sum.map({String($0)}).joined()
    return sum.count > 0 ? res : "0"
    }
}
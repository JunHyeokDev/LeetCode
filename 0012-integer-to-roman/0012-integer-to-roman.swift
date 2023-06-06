class Solution {
    func intToRoman(_ num: Int) -> String {
        
        let dict = [1000 : "M", 900 : "CM" , 500: "D" , 400 : "CD" , 100 : "C", 90 : "XC", 50 : "L", 40 : "XL", 10 : "X", 9 : "IX", 5: "V", 4 : "IV", 1 : "I"]
        let divider = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
        var arr = String(num).compactMap { Int(String($0)) }
        arr.reverse()
        var unit = 0
        var res = ""
        var container : [String] = [String]()
        
        for i in arr {
            var tmp = pow(10,unit)
            var val = Decimal(i) * tmp
            unit += 1
            var decimalToInt = NSDecimalNumber(decimal: val).intValue
            while decimalToInt != 0 {
                for i in divider {
                    if decimalToInt - i >= 0 {
                        decimalToInt = decimalToInt - i
                        res += dict[i]!
                        break // NOT Continue!!!
                    }
                }
            }
            container.append(res)
            res = ""

        }
        container.reverse()
        print(container)
        return container.joined(separator: "")
    }
}
class Solution {
    func isValid(_ s: String) -> Bool {
        var stack : [Character] = []
        
        for i in s {
            if i == "(" || i == "[" || i == "{" {
                stack.append(i)
            }
            
            else if (i == "]" && stack.last == "[" ) || ( i == ")" && stack.last == "(" ) || ( i == "}" && stack.last == "{" ) {
                stack.popLast()
            }
            else if (stack.count == 0) && (i == "}" || i == ")" || i == "]") {
                return false
            }
            else {
                stack.append(i)
            }
        }
        
        
        if stack.count > 0 {
            return false
        } else {
            return true
        }
        
        
        
    }
}
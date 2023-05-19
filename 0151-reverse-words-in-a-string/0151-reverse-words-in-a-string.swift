class Solution {
    func reverseWords(_ s: String) -> String {
        
        var s = s
        
        let trimmedString = s.trimmingCharacters(in : .whitespaces)
        print(trimmedString)
        
        
        let regex = try! NSRegularExpression(pattern: "\\s+", options: .caseInsensitive)
        let range = NSRange(location: 0, length: trimmedString.utf16.count)
        let res = regex.stringByReplacingMatches(in: trimmedString, options: [], range: range, withTemplate: " ")
        
        var words = res.components(separatedBy: " ")
        words.reverse()        
        return words.joined(separator: " ")
    }
}
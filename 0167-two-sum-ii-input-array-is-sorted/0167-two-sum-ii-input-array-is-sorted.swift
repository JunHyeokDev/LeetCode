class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
            var left = 0
    var right = numbers.count - 1
    
    while true {
        if numbers[left] + numbers[right] < target {
            left += 1
        }
        else if numbers[left] + numbers[right] > target {
            right -= 1
        }
        else if numbers[left] + numbers[right] == target {
            return [left+1,right+1]
        }
        print([left+1,right+1])
    }
    }
}
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        
        var start = 0 
        var end = height.count-1
        
        var currentArea = 0
        var maxArea = 0
        
        while start < end {
            currentArea = (end-start) * min(height[start], height[end])
            maxArea = max(maxArea,currentArea)
            
            if height[start] < height[end] {
                start += 1
            } else {
                end -= 1
            }
        }
        return maxArea
        
        
    }
}
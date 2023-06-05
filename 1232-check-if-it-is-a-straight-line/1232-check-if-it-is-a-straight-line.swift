class Solution {
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        
        if coordinates.count == 2 {
            return true
        }
        
        var criteria = [Int]()
        
        criteria = [coordinates[1][0] - coordinates[0][0], coordinates[1][1] - coordinates[0][1] ]
        let slope = Double(criteria[1]) / Double(criteria[0])
        
        
        print(slope)
        
        for i in 1..<coordinates.count {
            let current = [coordinates[i][0] - coordinates[0][0], coordinates[i][1] - coordinates[0][1] ]
            var a = Double(current[1]) / Double(current[0])
            if current[0] == 0 {
                a = Double.infinity
            }
            print(a)
            if slope != a {
                
                return false
            }
        }
        
        
        return true
    }
}
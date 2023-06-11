
class NumMatrix {    
    
    var matrix = [[Int]]()
    var sumTable = [[Int]]()
    
    
    init(_ matrix: [[Int]]) {
        
        self.matrix = matrix
        
        let rows = matrix.count
        let cols = matrix[0].count 
        
        
        sumTable = Array(repeating : Array(repeating: 0 , count: self.matrix[0].count + 1), count: self.matrix.count + 1)
        for j in 1...rows {
            for i in 1...cols {
                self.sumTable[j][i] = sumTable[j-1][i] + sumTable[j][i-1] - sumTable[j-1][i-1] + matrix[j-1][i-1]
            }
        }
        
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        var sum = 0
        
        var row1 = row1 + 1
        var col1 = col1 + 1
        var row2 = row2 + 1
        var col2 = col2 + 1
        
        return self.sumTable[row2][col2] - self.sumTable[row2][col1 - 1] - self.sumTable[row1 - 1][col2] + self.sumTable[row1 - 1][col1 - 1]
    }
}

/**
 * Your NumMatrix object will be instantiated and called as such:
 * let obj = NumMatrix(matrix)
 * let ret_1: Int = obj.sumRegion(row1, col1, row2, col2)
 */
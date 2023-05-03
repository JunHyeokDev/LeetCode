class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        
        var save = [[Int]]()
        
        for j in 0..<matrix.count {
            for i in 0..<matrix[0].count {
                if matrix[j][i] == 0 {
                    save.append([j,i])
                }
            }
        }
        
        for i in save {
            print(i)
        }
        for i in save{
            let row = i[0] // 1
            let col = i[1] // 2
            
            for j in 0..<matrix.count {
                matrix[j][col] = 0
            }
            
            for j in 0..<matrix[0].count {
                matrix[row][j] = 0
            }
            
        }
    }
}
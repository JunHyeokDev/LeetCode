class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        // 0,0 -> 0,n  
        // 0,n -> n,n
        // n,n -> n,0
        // n,0 -> 0,0
        let n = matrix.count
    
    for i in 0..<n {
        for j in i..<n {
            (matrix[i][j], matrix[j][i]) = (matrix[j][i], matrix[i][j])
        }
    }
    matrix = matrix.map { $0.reversed() }
    //print(matrix
    }
}

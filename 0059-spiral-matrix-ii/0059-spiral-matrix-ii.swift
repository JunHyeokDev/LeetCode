class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        
        // let array = (1...n*n).map { $0 }
        // var matrix = stride(from : 0 , to : n*n, by : n).map { Array(array[$0..<$0+n])}
        var matrix = Array(repeating : Array(repeating: 0, count : n) , count : n)
        
        var left = 0
        var right = n - 1
        var top = 0
        var bottom = n - 1
        var cnt = 1
        var tmp = [Int]()
        
        
        let maxCnt = n*n
        
        while true {
            for i in left..<right+1 {
                //res.append(matrix[top][i])
                matrix[top][i] = cnt
                cnt += 1
            }
            top += 1

            for i in top..<bottom+1 {
                //res.append(matrix[i][right])
                matrix[i][right] = cnt
                cnt += 1
            }
            right -= 1
            
            if left <= right {
                for i in stride(from: right, to : left-1, by : -1) {
                    //res.append(matrix[bottom][i])
                    matrix[bottom][i] = cnt
                    cnt += 1
                }
                bottom -= 1                
            }
            
            if top <= bottom {
                for i in stride(from : bottom, to : top-1, by : -1) {
                    //res.append(matrix[i][left])
                    matrix[i][left] = cnt
                    cnt += 1
                }
                left += 1
            }
            
            if cnt > maxCnt {
                break
            }
            
        }

        return matrix
    }
}
class Solution {
    func updateMatrix(_ grid: [[Int]]) -> [[Int]] {
        
        let rows = grid.count
        let cols = grid[0].count
        
        var mat = Array(repeating: Array(repeating: Int.max, count: cols), count: rows)
        
        let dy = [0,0,-1,1]
        let dx = [-1,1,0,0]
        let dirs = [(0, 1), (0, -1), (1, 0), (-1, 0)]

        var queue = [(Int, Int)]()
        
        for j in 0..<rows {
            for i in 0..<cols {
                var min = 1
                if grid[j][i] == 0 {
                    mat[j][i] = 0
                    queue.append((j, i))
                }
            }
        }
        
        
        while !queue.isEmpty {
            let current = queue.removeFirst()
            let ey = current.0
            let ex = current.1
            
            for dir in dirs {
                let ny = ey + dir.0
                let nx = ex + dir.1
                
                if 0 <= ny && ny < rows && 0 <= nx && nx < cols {
                    if mat[ny][nx] > mat[ey][ex] + 1 {
                        mat[ny][nx] = mat[ey][ex] + 1
                        queue.append((ny,nx))
                    }
                }
            }
        }
        
        return mat
    }
}
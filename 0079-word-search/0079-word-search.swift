class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        
        var count = 0
        var visited = Array(repeating: Array(repeating: false, count: board[0].count), count: board.count)
        let word = Array(word)
        

        
        for j in 0..<board.count {
            for i in 0..<board[0].count {
                if board[j][i] == word[0] && dfs(board,word,0,j,i) {
                   return true
                }
            }
        }
        return false
    }
    
    func dfs(_ board: [[Character]],_ word: [Character], _ len: Int, _ y: Int, _ x: Int) -> Bool {
        if word.count == len {
            return true
        }
        
        
        if y < 0 || y >= board.count || x < 0 || x >= board[0].count || board[y][x] != word[len] {
            return false
        }
        var b = board
        b[y][x] = Character(" ")
        
        let found = dfs(b, word, len + 1,y+1,x) || dfs(b, word, len + 1,y,x+1) || dfs(b, word, len + 1,y-1,x) || dfs(b, word, len + 1,y,x-1)
        return found
    }
}


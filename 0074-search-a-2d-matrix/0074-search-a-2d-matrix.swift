class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        
        var tmp = matrix
        var empty = [Int]()
        var res = tmp.map{$0}.reduce(empty,+)
        
        func binary(_ matrix : [[Int]] , _ target : Int ) -> Bool {
            var start = 0
            var end = res.count - 1
            var mid = 0
            var tmp = 0
            
            while start <= end {
                print("Start : \(start) end :  \(end) mid : \(mid)")
                mid = start + (end - start) / 2
                //tmp += 1
                
                if res[mid] == target {
                    return true
                }
                
                if res[mid] >= target {
                    end = mid - 1
                } else if res[mid] < target {
                    start = mid + 1
                }           
//                 if tmp > 5 {
//                     break
//                 }
            }
            return false

        }
        
        return binary(matrix,target) 
        
    }
}
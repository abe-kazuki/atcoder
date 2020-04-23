import Foundation

let  N = Int(readLine()!) ?? 0
var  array = (readLine()!)  .components(separatedBy: " ").map{Int($0) ?? 0 }
var  array2: [(Int,Int)] = []
for  (x, value) in array.enumerated(){
    array2.append((x, value))
}

array2.sort {$0.1 > $1.1}

var  status_array = Array(repeating: Array(repeating: 0, count: N+1), count: N+1)

array2.enumerated().forEach{
    //print($0.0,$0.1.0,$0.1.1)
    for j in 0..<$0.0+1{

        status_array[$0.0 + 1][j + 1] = max(status_array[$0.0 + 1][j + 1] , status_array[$0.0][j] + ($0.1.0 - j) * $0.1.1)

        status_array[$0.0 + 1][j] = max(status_array[$0.0 + 1][j], status_array[$0.0][j] + ((N - ($0.0 - j) - 1) - $0.1.0) * $0.1.1)
    }
    
}

var total = 0
for i in status_array{
    
    for j in i{
        total = total < j ? j :total
    }
}
print(total)

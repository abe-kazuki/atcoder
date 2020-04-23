import Foundation

let num = Int(readLine()!) ?? 0
var array: [[Int]] = Array(repeating: Array(repeating: 0, count: 0), count: 2)
for _ in 1...num{
    var input = (readLine()!).components(separatedBy: " ")
    input[1]  == "R" ? array[0].append(Int(input[0]) ??  0) : array[1].append(Int(input[0]) ??  0)
}
for var i in array{
    i.sort{$0 < $1}
    i.forEach{
      print($0)
    }
}

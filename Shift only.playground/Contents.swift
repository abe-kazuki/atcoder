import Foundation

let  N = Int(readLine()!) ?? 1
var  A_array = (readLine()!).components(separatedBy: " ").map{(Int($0) ?? 0)}
var count: Int = 100
 
A_array.forEach{
   if count > $0.trailingZeroBitCount{
       count = $0.trailingZeroBitCount
   }
}

print(count)

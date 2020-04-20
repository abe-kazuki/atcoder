import Foundation
 
let  N = Int(readLine()!) ?? 1
 
let  A_array = (readLine()!).components(separatedBy: " ")
var array = A_array.map{(Int($0) ?? 0)}
 
var count = 0
 
while  array.filter{ $0 % 2 == 0 }.count == N{
     array = array.map{Int($0/2)}
    count += 1
}
print(count)

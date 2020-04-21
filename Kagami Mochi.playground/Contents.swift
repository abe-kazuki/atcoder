import Foundation
 
let a: Int = Int(readLine()!) ?? 1
var array = Array(repeating: 0, count: a)

array = array.map{_ in Int(readLine()!) ?? 1}
array = Array(Set(array))
//array.sort {$0 > $1}


print(array.count)

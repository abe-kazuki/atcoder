import Foundation
 
let a: Int = Int(readLine()!) ?? 1
 
let bc = ( readLine()!).components(separatedBy: " ")
 
let sum = a+(Int(bc[0]) ?? 1)+(Int(bc[1]) ?? 1)
 
let str = readLine()!
 
print(sum,str)

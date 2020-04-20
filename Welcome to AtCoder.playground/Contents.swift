import Foundation

let a: Int = Int(readLine()!) ?? 1

let  bc = ( readLine()!).components(separatedBy: " ")
let b =  Int(bc[0]) ?? 1
let c =  Int(bc[1]) ?? 1

let sum = a+b+c

let str = readLine()!

print(sum,str)

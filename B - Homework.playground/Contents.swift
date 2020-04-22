import Foundation

let  homeworks = (readLine()!).components(separatedBy: " ").map{Int($0) ?? 0 }
var     days = Array(repeating: 0, count: homeworks[1])
days = (readLine()!).components(separatedBy: " ").map{Int($0) ?? 0 }
let sum_days = days.reduce(0) {(num1: Int, num2: Int) -> Int in
    return num1 + num2
}

print( homeworks[0] >= sum_days ?   homeworks[0]-sum_days:-1)

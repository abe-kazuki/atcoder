import Foundation
 
let  N = Int(readLine()!) ?? 0
var array = Array(repeating: 0, count: 3)
var next_array = Array(repeating: 0, count: 3)
var flag = "Yes"

label: for _ in 0...N-1 {
    next_array = (readLine()!).components(separatedBy: " ").map{Int($0) ?? 0 }
    if (next_array[0]-array[0]) % 2 != (abs(next_array[1]-array[1]) + abs(next_array[2]-array[2])) % 2 || next_array[0] < (next_array[1] + next_array[2]) {
         flag = "No"
        break
    }
    array = next_array
}
print(flag) 

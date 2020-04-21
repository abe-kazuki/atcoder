import Foundation
 
var input = Array(readLine()!)
var str_array = ["dream","dreamer","erase","eraser"]
var t = ""

for i in 1...input.count {
    t.insert(input[input.count-i], at: t.startIndex)
     if str_array.contains(t) {
         t = ""
     }
}

print(t.count == 0 ? "YES" : "NO")

import Foundation

let num = (readLine()!).components(separatedBy: " ").map{Int($0) ?? 0 }
var X = num[0]

while num[1] > X || X > num[2]{
    X = X < num[1] ? X+1:X
    X = X > num[2] ? X-1:X
}
print(X)


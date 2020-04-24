import Foundation

let numArray = (readLine()!).split(separator: " ").map{Int($0) ?? 0}
print(numArray[2],numArray[0],numArray[1])

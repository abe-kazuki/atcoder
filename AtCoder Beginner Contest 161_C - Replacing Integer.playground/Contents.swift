import Foundation

let numArray = (readLine()!).componentsSeparatedByString(" ").map{ Int($0) ?? 0 }
var N = numArray[0]

print(min(N%numArray[1], numArray[1] - (N%numArray[1])) )

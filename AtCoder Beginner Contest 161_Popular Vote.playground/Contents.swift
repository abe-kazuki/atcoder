import Foundation

let numArray = [1,1]
var Ai = [1]
let sumAi = Ai.reduce(0) {(num1: Int, num2: Int) -> Int in
    return num1 + num2
}

Ai = Ai.filter { Double($0) > Double(sumAi/(4*numArray[1])) }
print(Ai.count >= numArray[1] ? "Yes" : "No")

import Foundation
let number = (Int(readLine()!) ?? 0)
var cards_array = Array(repeating: 0, count: number)
let  cards = (readLine()!).components(separatedBy: " ")

cards_array = cards.map{Int($0) ?? 0 }
cards_array.sort { $0 > $1 }

var diff = 0

for (index, num) in cards_array.enumerated(){
  diff += index % 2 == 0 ?  num : -num
}

print(diff)

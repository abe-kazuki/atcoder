import Foundation

let  menber = (Int(readLine()!) ?? 0 )
var     boss_num = Array(repeating: 0, count: menber-1)
boss_num = (readLine()!).components(separatedBy: " ").map{Int($0) ?? 0 }

var     subordinate = Array(repeating: 0, count: menber)
boss_num.forEach{
   subordinate[$0-1] += 1
}

subordinate.forEach{
   print($0)
}

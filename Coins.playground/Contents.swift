import Foundation

let  yen500 = Int(readLine()!) ?? 0
let  yen100 = Int(readLine()!) ?? 0
let  yen50 = Int(readLine()!) ?? 0
let  X = Int(readLine()!) ?? 0

var count = 0
var value: Int = 0

for a in 0...yen500{
        for b in 0...yen100{
                 for c in 0...yen50{
                         if  a*500+b*100+c*50 == X  {
                             count += 1
                         }
                }
        }
}
print(count)


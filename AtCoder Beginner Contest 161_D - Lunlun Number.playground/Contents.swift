import Foundation

let K = (readLine()!)
var kArray = K
var stored: [Int] = [1,2,3,4,5,6,7,8,9]
var i = 10

while stored.count != (Int(K) ?? 0){
   let iArray = String(i).characters.flatMap { Int("\($0)") }
   for j in  0..<iArray.count-1{
     
     var bool1 = abs(((Int (iArray[j]) ?? 0) ) - (Int(iArray[j+1]) ?? 0)) == 1
     var bool2 = abs(((Int(iArray[j+1]) ?? 0  - (Int (iArray[j]) ?? 0) ))) == 1
     var bool3 = abs(((Int (iArray[j]) ?? 0) ) - (Int(iArray[j+1]) ?? 0)) == 0
     
     if !(bool1 || bool2 || bool3){
       break
     }
     stored.append(i)
   }
   i += 1
}
print(stored.last!)

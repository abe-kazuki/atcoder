import Foundation
 
let input = (readLine()!).components(separatedBy: " ").map{ Int($0) ?? 0 }

var yen1000 = -1
var yen5000 = -1
var yen10000 = -1

label: for  i in 0...input[0]{
  for j in 0...input[0]{
    let val =  (input[0] - i - j)
    if input[1] == i*10000 + j*5000 + val*1000 && val >= 0 {
      yen1000 = input[0] - i - j
      yen5000 = j
      yen10000 = i
      break label
    }
  }
}
print(yen10000 ,yen5000 ,yen1000)

import Foundation

let  num = (readLine()!)  .components(separatedBy: " ").map{Int($0) ?? 0 }
let mod: Int = 1000000007
 
var total = 0

func f(_ k: Int) -> Int {
  return  (((num[0])*2-k+1) * k/2) - (k * (k-1) / 2) + 1
}

for i in num[1]...num[0]+1 {
     total += f(i)
}
 
print(total % mod)

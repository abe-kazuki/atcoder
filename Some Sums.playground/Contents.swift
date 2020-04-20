import Foundation

let  numbers = (readLine()!).components(separatedBy: " ")
let numbers_array = numbers.map{Int($0) ?? 0 }
var count = 0
var i_sum = 0

for  i  in 1...numbers_array[0]{
       i_sum = 0
       var n = i
        while  n > 0  {
              i_sum += n % 10
              n /= 10
         }

        if numbers_array[1] <=  i_sum  && numbers_array[2] >= i_sum {
                count += i
       }
}
print(count)


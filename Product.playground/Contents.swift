import Foundation

let  numbers = readLine()!
if numbers.count > 1{
    let numbers_array =  numbers.components(separatedBy: " ")

     let sum = (Int(numbers_array[0]) ?? 1) * (Int(numbers_array[1]) ?? 1)

    if sum %  2  == 0{
          print("Even")
    }
    else{
         print("Odd")
   }
}

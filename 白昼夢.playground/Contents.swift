import Foundation
 
var input = (readLine()!).replacingOccurrences(of: " ", with: "")

var str_array = ["dream","dreamer","erase","eraser"]
str_array.sort{$0 > $1}

str_array.forEach{
  if let range = input.range(of: $0) {
    input.replaceSubrange(range, with: "")
  }
}


print(input)
var result = input.count == 0 ? "YES" : "NO"
print(result)

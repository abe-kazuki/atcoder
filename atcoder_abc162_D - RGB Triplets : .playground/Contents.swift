let N = Int(readLine()!) ?? 0
let rgbArray = Array(readLine()!)
var count = 0
var rgbIndex = Array(repeating: Array(repeating: 0, count: 0), count: 3)
 
rgbArray.enumerated().forEach{
    if $0.1 == "R"{
        rgbIndex[0].append($0.0)
    }
    if $0.1 == "G"{
        rgbIndex[1].append($0.0)
    }
    if $0.1 == "B"{
        rgbIndex[2].append($0.0)
    }
 
    
}
var total = rgbIndex[2].count*rgbIndex[1].count*rgbIndex[0].count
 
for i in 0 ..< N {
    for j in i+1 ..< N {
        let k = 2 * j - i
        if k >= N {
          break
        }
        if rgbArray[i] != rgbArray[j] && rgbArray[j] != rgbArray[k] && rgbArray[k] != rgbArray[i] {
            total -= 1
        }
    }
}
 
print(total)

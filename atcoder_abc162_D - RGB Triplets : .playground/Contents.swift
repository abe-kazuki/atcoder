let K = 4
let rgbArray = Array("RRGB")
var count = 0

var rgbIndex = Array(repeating: Array(repeating: 0, count: 0), count: 3)

rgbArray.enumerated().forEach{
    if $0.1 == "R"{
        rgbIndex[0].append($0.0)
    }
    else if $0.1 == "G"{
        rgbIndex[1].append($0.0)
    }
    else{
        rgbIndex[2].append($0.0)
    }
}
print(rgbIndex)
for i in rgbIndex[0]{
    for j in rgbIndex[1]{
            for k in rgbIndex[2]{
                if (j - i !=  k - j) && (i < j && j < k){
                    print(i,j,k)
                    count += 1
                      
                }
            }
    }
}
print(count)
print(rgbIndex[0].count*rgbIndex[1].count*rgbIndex[2].count)

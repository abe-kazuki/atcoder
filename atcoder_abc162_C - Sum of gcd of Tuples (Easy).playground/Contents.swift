let K = Int(readLine()!) ?? 0
var result = 0
for i in 1...K{
    for j in 1...K{
        for k in 1...K{
           result += gcd(gcd(i,j),k)
        }
    }
}

print(result)

func gcd(_ a:Int,_ b:Int)->Int{
    let r = a % b == 0 ? b : gcd(b,a % b)
    return r
}

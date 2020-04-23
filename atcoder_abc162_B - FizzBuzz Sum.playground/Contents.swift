let N = Int(readLine()!) ?? 0
let total = (1...N).filter { $0 % 3 != 0 && $0 % 5 != 0 }.reduce(into: 0) { $0 += $1 }
print(total)

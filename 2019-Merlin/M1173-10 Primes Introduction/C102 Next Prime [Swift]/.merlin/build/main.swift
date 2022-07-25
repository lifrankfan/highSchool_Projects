// Add your code below:
func isPrime(n:Int) -> Bool {
    var prime = true
    var div = 3
    if (n < 2) {
        prime = false
    }
    if (n == 2) {
        prime = true
    }
    while div < n {
        if (div == n) {
            prime = true
        }
        else if (n % div == 0) {
            prime = false
        }
        div += 2
    }
    return prime
}

func nextPrime(n:Int) -> Int {
    var Found = 0
    var n1 = n
    repeat {
        n1 += 1
        if (isPrime(n:n1) == true) {
            Found = 1
        }
    }while (Found != 1)
    return n1
}


// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let n = 4216
print(n, nextPrime(n:n))
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

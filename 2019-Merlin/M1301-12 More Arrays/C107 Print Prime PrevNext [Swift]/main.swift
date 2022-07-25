// Add your code below:
func isPrime(n:Int) -> Bool {
    
    for x in 2 ..< n {
        if n % x == 0 {
        return false
        }
    }
    return true
}
    
func adjacentPrimes(integers:[Int]) {

    for index in integers {
        print("\(smallN(n:index))" + "," +  "\(largeN(n:index))")
    }
}

func largeN (n:Int) -> Int {
    var large = n 
    repeat {
        large += 1
    } while !isPrime(n:large)
    return large
}

func smallN (n:Int) -> Int {
    var small = n 
    repeat {
        small -= 1
    } while !isPrime(n:small)
    return small
}
    // Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let integers = [12, 14, 101, 7]
adjacentPrimes(integers:integers)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

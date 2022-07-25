// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

var sorted = unsortedIntegers

func swap(integers:inout[Int],firstIndex:Int, secondIndex:Int) {
    let fI = integers[firstIndex]    
    integers.remove(at:firstIndex)
    integers.insert(integers[secondIndex], at:firstIndex)
    integers.remove(at:secondIndex)    
    integers.insert(fI, at:secondIndex)
}

var pass = 0
var swap = 0
var tSwap = 0
print("Pass: \(pass), Swaps: \(swap)/\(tSwap), Array: \(sorted)")
for index in 1 ..< sorted.count {
    pass = index
    swap = 0
    repeat {
        if sorted[pass] < sorted[pass-1] {
            swap(integers:&sorted, firstIndex:pass, secondIndex:pass-1)
            swap += 1
            tSwap += 1
        }
        pass -= 1
    } while pass >= 1
    pass = index
    print("Pass: \(pass), Swaps: \(swap)/\(tSwap), Array: \(sorted)")
}

/*

var tPass = 0
var passIndex = 1
var swap = 0
var tSwap = 0
print("Pass: \(tPass), Swaps: \(swap)/\(tSwap), Array: \(sorted)")
for pass in 1 ..< sorted.count {
    repeat {
        if sorted[passIndex] < sorted[passIndex-1] {
            swap(integers:&sorted, firstIndex:passIndex, secondIndex:passIndex-1)
            swap += 1
            tSwap += 1
        }
        passIndex -= 1
    } while passIndex >= 1
    
    tPass += 1
    passIndex = pass + 1
    print("Pass: \(tPass), Swaps: \(swap)/\(tSwap), Array: \(sorted)")
    swap = 0
}

*/

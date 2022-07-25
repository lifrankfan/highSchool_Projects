// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

var array = unsortedIntegers

func swap(integers:inout[Int],firstIndex:Int,secondIndex:Int) {
    let fI = integers[firstIndex]

    integers.remove(at: firstIndex)
    integers.insert(integers[secondIndex], at: firstIndex)
    integers.remove(at: secondIndex)
    integers.insert(fI, at: secondIndex)
}


var tSwaps = 0
var swaps = 0
var pass = 0
print("Pass: \(pass), Swaps: \(swaps)/\(tSwaps), Array: \(array)")
for index in 1 ..< array.count {
    pass = index
    swaps = 0
    repeat {        
        if array[pass] < array[pass-1] {
            swap(integers:&array,firstIndex:pass,secondIndex:pass-1)
            swaps += 1
            tSwaps += 1
        }
        pass -= 1
    } while pass >= 1
    pass = index
    print("Pass: \(pass), Swaps: \(swaps)/\(tSwaps), Array: \(array)")
}










/*
 there is error in this code for some reason "simultaneous access"
var tSwaps = 0
var swaps = 0
var pass = 0
for index in 1 ..< array.count {
    print("Pass: \(pass), Swaps: \(swaps)/\(tSwaps), Array: \(array)")
    pass = index
    swaps = 0
    repeat {        
        if array[pass] < array[pass-1] {
            swap(integers:&array,firstIndex:index,secondIndex:index-1)
            swaps += 1
            tSwaps += 1
        }
        pass -= 1
    } while pass >= 1
}
  
*/
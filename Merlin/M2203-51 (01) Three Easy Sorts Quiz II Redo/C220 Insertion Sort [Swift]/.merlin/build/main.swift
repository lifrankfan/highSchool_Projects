

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = ["stereotyped", "parcel", "machine", "inform", "lethal"]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
var array = unsortedStrings

func swap(array: inout [String], fI: Int, sI:Int) {
    let f = array[fI]
    
    array.remove(at: fI)
    array.insert(array[sI], at:fI)
    array.remove(at: sI)
    array.insert(f, at:sI)
}


var tPass = 0
var passIndex = 1
var swap = 0
var tSwap = 0
print("Pass: \(tPass), Swaps: \(swap)/\(tSwap), Array: \(array)")
for pass in 1 ..< array.count {
    repeat {
        if array[passIndex] < array[passIndex-1] {
            swap(array:&array, fI:passIndex, sI:passIndex-1)
            swap += 1
            tSwap += 1
        }
        passIndex -= 1
    } while passIndex >= 1
    
    tPass += 1
    passIndex = pass + 1
    print("Pass: \(tPass), Swaps: \(swap)/\(tSwap), Array: \(array)")
    swap = 0
}


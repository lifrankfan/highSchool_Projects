

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = ["senior", "hold", "laws", "repealed", "victory"]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

var new = unsortedStrings

func swap(strings:inout [String], firstIndex:Int,secondIndex:Int) {
    let f = strings[firstIndex]
    let s = strings[secondIndex]
    
    strings.remove(at:firstIndex)
    strings.insert(s, at:firstIndex)
    strings.remove(at:secondIndex)
    strings.insert(f, at:secondIndex)
}


var pass = 0
var swap = 0
var tSwap = 0
print("Pass: \(pass), Swaps: \(swap)/\(tSwap), Array: \(new)")
for x in 1 ..< new.count {
    pass = x
    swap = 0
    repeat {
        if new[pass] < new[pass-1] {
            swap(strings:&new, firstIndex:pass,secondIndex:pass-1)
            swap += 1
            tSwap += 1
        }
        pass -= 1
    } while pass >= 1
    pass = x
    print("Pass: \(pass), Swaps: \(swap)/\(tSwap), Array: \(new)")
}



// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = ["chicken", "massive", "books", "crush", "needy", "marked", "cherry", "scorch", "crooked", "rabbits"]
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
var tPass = 1
var lastTime = false
print("Pass: \(pass), Swaps: \(swap)/\(tSwap), Array: \(new)")
repeat {
    tPass += 1
    for x in 0 ..< new.count-1 {
        if new[x] > new[x+1] {
            swap += 1
            tSwap += 1
            swap(strings:&new,firstIndex:x,secondIndex:x+1)
        }
    }
    pass += 1
    print("Pass: \(pass), Swaps: \(swap)/\(tSwap), Array: \(new)")
    if swap == 0 {
        lastTime = true
    }
    swap = 0
} while lastTime == false && tPass < new.count-1

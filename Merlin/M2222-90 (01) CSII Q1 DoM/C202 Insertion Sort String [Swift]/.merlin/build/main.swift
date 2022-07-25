

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = ["friend", "claim", "announce", "page", "fly", "fallacious", "icky", "minute", "start", "quartz"]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
var array = unsortedStrings

func swap(array:inout[String], fI:Int, sI:Int) {
    let f = array[fI]
    let s = array[sI]
    
    array.remove(at:sI)
    array.insert(f, at:sI)
    array.remove(at:fI)
    array.insert(s, at:fI)
}

var index = 0
var swaps = 0
var tSwaps = 0
print("Pass: \(index), Swaps: \(swaps)/\(tSwaps), Array: \(array)")
for pass in 1 ..< array.count {
    index = pass
    swaps = 0
    repeat {
        if array[index] < array[index-1] {
            swap(array:&array,fI:index,sI:index-1)
            swaps += 1
            tSwaps += 1
        }
        index -= 1
    } while index >= 1
    index = pass
    print("Pass: \(index), Swaps: \(swaps)/\(tSwaps), Array: \(array)")
}

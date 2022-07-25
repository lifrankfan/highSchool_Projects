

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = ["sassy", "special", "envious", "combative", "children", "well-to-do", "ratty", "moor", "lamentable"]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
var array = unsortedStrings
func swap(strings:inout[String], firstIndex:Int, secondIndex:Int) {
    let fI = strings[firstIndex]
    let sI = strings[secondIndex]
    strings.remove(at:firstIndex)
    strings.insert(sI, at:firstIndex)
    strings.remove(at:secondIndex)
    strings.insert(fI,at:secondIndex)
}

var swaps = 0
var tSwap = 0
var pass = 0
print("Pass: \(pass), Swaps: \(swaps)/\(tSwap), Array: \(array)")
repeat {

    swaps = 0
    for index in 0 ..< array.count - 1 {

        if array[index] > array[index+1] {
            swap(strings:&array,firstIndex:index,secondIndex:index+1)
            swaps += 1
            tSwap += 1
        }
    }
    pass += 1
    print("Pass: \(pass), Swaps: \(swaps)/\(tSwap), Array: \(array)")
} while pass < array.count && swaps != 0



// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = ["senior", "hold", "laws", "repealed", "victory"]
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


var tSwap = 0
var swaps = 0

for pass in 0 ..< array.count {
    print("Pass: \(pass), Swaps: \(swaps)/\(tSwap), Array: \(array)")
    var select = pass
    var index = pass
    swaps = 0
    repeat {
        if array[index] < array[select] {
            select = index
        }
        index += 1
    } while index != array.count
    if select != pass {
        swap(array:&array,fI:pass,sI:select)
    }
    swaps += 1
    tSwap += 1

}

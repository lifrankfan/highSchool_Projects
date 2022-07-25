
// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [981, -18, -999, -754, 93, -137]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

var array = unsortedIntegers

func swap(array:inout[Int],firstIndex:Int,secondIndex:Int) {
    let fI = array[firstIndex]
    let sI = array[secondIndex]
        
    array.remove(at:firstIndex)
    array.insert(sI, at:firstIndex)
    array.remove(at:secondIndex)
    array.insert(fI, at:secondIndex)

}


var swaps = 0
var tSwaps = 0


for pass in 0 ..< array.count {
    print("Pass: \(pass), Swaps: \(swaps)/\(tSwaps), Array: \(array)")
    var select = pass
    var index = pass
    swaps = 0
    repeat {
        if array[index] < array[select] {
            select = index
        }
        index += 1
    } while index != array.count
    if pass != select {
        swap(array:&array,firstIndex:pass,secondIndex:select)
    }
    swaps += 1
    tSwaps += 1
    
}



/*
  repeat {
    
    
} while

 */

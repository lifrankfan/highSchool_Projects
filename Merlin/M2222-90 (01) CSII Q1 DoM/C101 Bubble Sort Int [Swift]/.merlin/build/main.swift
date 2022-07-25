

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [608, -968, -717, -820, 554, 998, -618, -372]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

var array = unsortedIntegers

func swap(integers:inout[Int], firstIndex:Int, secondIndex:Int) {
    let s = integers[secondIndex]

    integers.remove(at:secondIndex)
    integers.insert(integers[firstIndex], at:secondIndex)
    integers.remove(at:firstIndex)
    integers.insert(s, at:firstIndex)
}

var tSwap = 0
var pass  = 0
var swaps = 0
print("Pass: \(pass), Swaps: \(swaps)/\(tSwap), Array: \(array)")

repeat {
    swaps = 0
    for index in 0 ..< array.count - 1 {
        if array[index] > array[index+1] {
            swap(integers:&array, firstIndex:index, secondIndex:index+1)
            swaps+=1
            tSwap+=1
        }
        
    }
    pass += 1
    print("Pass: \(pass), Swaps: \(swaps)/\(tSwap), Array: \(array)")
} while pass < array.count  && swaps != 0

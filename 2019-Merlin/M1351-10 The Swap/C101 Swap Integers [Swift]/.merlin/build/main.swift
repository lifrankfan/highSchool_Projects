// Add your code below:
func swap(integers:inout [Int], firstIndex: Int, secondIndex:Int) {
    
    let firstI = integers[firstIndex]
    let secondI = integers[secondIndex]
    integers.remove(at:firstIndex)
    integers.insert(secondI, at:firstIndex)
    integers.remove(at:secondIndex)
    integers.insert(firstI, at:secondIndex)
    
    }

// Add your code above



// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
var integers = [618, 693, -211, -421, 680, -623, 329, -876, 85, 515, -919]
let firstIndex = 6
let secondIndex = 1
print("Before swapping: \(integers)")
print("Swapping value at index \(firstIndex) with value at index \(secondIndex)")
swap(integers:&integers, firstIndex:firstIndex, secondIndex:secondIndex)
print("After swapping: \(integers)")
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

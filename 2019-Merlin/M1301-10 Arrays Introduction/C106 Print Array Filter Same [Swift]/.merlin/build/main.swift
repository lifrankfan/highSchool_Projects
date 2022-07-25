// Add your code below:




func printSameOddnessIntegers(integers:[Int]) -> Int {
    var printedCount = 0
    var previousRemainder : Int? = nil
    for integer in integers {
        let currentRemainder = integer % 2
        if previousRemainder != nil && abs(previousRemainder!) == abs(currentRemainder) {
            print(integer)
            printedCount += 1
        }
        previousRemainder = currentRemainder
    }
    return printedCount
}



/*
func printSameOddnessIntegers(integers:[Int]) -> Int {
    var array = 0
    var wasPreviousOdd : Bool = integers[0] % 2 != 0
    var thisOdd : Bool
    for number in 1 ..< integers.count {
        thisOdd = integers[number] % 2 != 0
        if wasPreviousOdd == thisOdd{
            print(integers[number])
            array += 1
            }
        wasPreviousOdd = integers[number] % 2 != 0 //odd
    }
    return array
}

 */





// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let integers : [Int] = [9462, 7711, 1842, 1727, 2997]
print(integers)
let count = printSameOddnessIntegers(integers:integers)
print(count)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

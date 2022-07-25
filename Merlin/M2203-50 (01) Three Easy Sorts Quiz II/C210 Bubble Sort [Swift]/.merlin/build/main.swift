

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = ["love", "perfect", "cynical", "believe", "bridge", "seed"]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:



var sorted = unsortedStrings


func swap(integers:inout [String], firstIndex:Int, secondIndex:Int) {
    let fI = integers[firstIndex]
    let sI = integers[secondIndex]
    
    integers.remove(at:firstIndex)
    integers.insert(sI, at:firstIndex)
    integers.remove(at:secondIndex)    
    integers.insert(fI, at:secondIndex)

}

var passes = 0
var swaps = 0
var tSwaps = 0
var totalp = 1
var lastTime = false
print("Pass: \(passes), Swaps: \(swaps)/\(tSwaps), Array: \(sorted)")

repeat {
    totalp += 1
    for x in 0 ..< sorted.count - 1 {
        if sorted[x] > sorted[x+1] {
            swaps += 1
            tSwaps += 1
            swap(integers:&sorted,firstIndex:x,secondIndex:x+1)
        }
    }
    passes += 1
    print("Pass: \(passes), Swaps: \(swaps)/\(tSwaps), Array: \(sorted)")
    if swaps == 0 {
        lastTime = true
    }
    swaps = 0
}while lastTime == false && totalp < sorted.count


/*
func digit(character:Character) -> Int? {
    var number: Int?
    switch character {
    case "a":
        number = 0
    case "b":
        number = 1
    case "c":
        number = 2
    case "d":
        number = 3
    case "e":
        number = 4
    case "f":
        number = 5
    case "g":
        number = 6
    case "h":
        number = 7
    case "i":
        number = 8
    case "j":
        number = 9
    case "k":
        number = 10
    case "l":
        number = 11
    case "m":
        number = 12
    case "n":
        number = 13
    case "o":
        number = 14
    case "p":
        number = 15
    case "q":
        number = 16
    case "r":
        number = 17
    case "s":
        number = 18
    case "t":
        number = 19
    case "u":
        number = 20
    case "v":
        number = 21
    case "w":
        number = 22
    case "x":
        number = 23
    case "y":
        number = 24
    case "z":
        number = 25
    default:
        number = nil
    }
    return number
}

func swap(strings:inout[String], firstIndex:Int, secondIndex: Int) {
    let fI = strings[firstIndex]
    let sI = strings[secondIndex]

    strings.remove(at:firstIndex)
    strings.insert(sI, at:firstIndex)
    strings.remove(at:secondIndex)
    strings.insert(fI, at:secondIndex)
}

var pass = 0
var swap = 0
var tswap = 0
print("Pass: \(pass), Swaps: \(swap)/\(tswap), Array: \(toBe)")


for pass in 1 ..< toBe.count {
    let first = digit(character:toBe[pass].first!)
//    let second = digit(character:toBe[pass-1].first!) 
    print(first!)
    //swap(strings:&toBe, firstIndex:pass, secondIndex:pass-1)
    
}


*/

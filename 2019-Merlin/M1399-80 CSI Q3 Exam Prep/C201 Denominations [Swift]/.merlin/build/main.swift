// Add your code below:

func digit(character:Character) -> Int? {
    var number : Int?
    
    switch character {
    case "0":
        number = 0
    case "1":
        number = 1
    case "2":
        number = 2
    case "3":
        number = 3
    case "4":
        number = 4
    case "5":
        number = 5
    case "6":
        number = 6
    case "7":
        number = 7
    case "8":
        number = 8
    case "9":
        number = 9        
    default: number = nil
    }
    return number
}

func number(characters:String) -> Int {
    var n = 0
    for character in characters{
        let digitValue = digit(character:character)
        if digitValue != nil {
            n *= 10
            n += digitValue!
        }
    }
    return n
}
    
func printDenominations(forSum:String) {
    print("Original sum: \(forSum)")
}


// Add your code above


// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let sum = "$195.59"
printDenominations(forSum:sum)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧




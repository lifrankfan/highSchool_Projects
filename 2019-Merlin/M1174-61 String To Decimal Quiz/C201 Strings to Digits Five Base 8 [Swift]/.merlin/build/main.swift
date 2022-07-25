// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let string = "X3XY21zy76"
let m = 8
let base = 8
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


print(string)
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
/*
    case "8":
        number = 8
    case "9":
        number = 9
        
 */
    default:
        number = nil
    }
    return number
}


func number(string:String) -> Int {
    var x = 0
    for character in string {
        let digitValue = digit(character:character)
        if digitValue != nil {
            x *= 8
            x += digitValue!
        }
    }
    return x
}

print(number(string:string) / m)

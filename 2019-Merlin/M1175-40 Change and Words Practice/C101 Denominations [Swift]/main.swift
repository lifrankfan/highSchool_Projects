// Add your code below:
// Add your code above
/*
let digit = [0,1,2,3,4,5,6,7,8,9]
func printDenominations(forSum:String) {

}


 */



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
    default:
      number = nil
    }
    return number
}

func number(string:String) -> Int {
    var n = 0
    for character in string {
        let digitValue = digit(character:character)
        if digitValue != nil {
            n *= 10
            n += digitValue!
        }
    }
    return n
}

var one = 0
var two = 0
var five = 0
var ten = 0
var twenty = 0
var fifty = 0
var hundred = 0

func bills(amt:Int) {
    one += amt%10
    if one / 5 > 1 {
        five += 1
        one -= 5
    }
    if one / 2 >= 1 {
        two += one / 2
        one -= (two*2)
    }
    ten += (amt/10)%10
    if ten / 5 > 1 {
        fifty += 1
        ten -= 5
    }
    if ten / 2 >= 1 {
        twenty += one / 2
        ten -= (twenty*2)
    }
    hundred += (amt/100)%10
}


var p = 0
var n = 0
var d = 0
var q = 0
var hD = 0


func coins(amt:Int) {
    var totalCoins = amt % 100
    if totalCoins / 50 >= 1 {
        hD += 1
        totalCoins -= 50
    }
    if totalCoins / 25 >= 1 {
        q += totalCoins / 25
        totalCoins -= 25 * q
    }
    if totalCoins / 10 >= 1 {
        d += totalCoins / 10
        totalCoins -= 10 * d
    }
    if totalCoins / 5 >= 1 {
        n += totalCoins / 5
        totalCoins -= 5 * n
    }
    p += totalCoins
}

func printDenominations(forSum:String) {
    let total = number(string:forSum)
    bills(amt:total/100)
    coins(amt:total)
    print("Original sum: \(sum)")
    if hundred == 1 {
        print("\(hundred) x $100 bill")
    }
    else {
        print("\(hundred) x $100 bills")
    }
}


// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let sum = "$123.45"
printDenominations(forSum:sum)


// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧




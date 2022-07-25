// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let number : Int = 5
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

let ones = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

let tens = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

let teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "ninteen"]

func onesDigit(number:Int) -> String {
    let onesDigit = number % 10
    precondition((0 ..< ones.count).contains(onesDigit),
                  "onesPlace \(onesDigit) out of bounds for array one")
    return ones[onesDigit]
}



func tensDigit(number:Int) -> String {
    let tensPlaceDigit = number / 10
    precondition( (0 ..< tens.count).contains(tensPlaceDigit) ,
                  "tensPlaceDigit \(tensPlaceDigit) out of bounds for array tens")
    return tens[tensPlaceDigit]
    
}

func twoDigits(number:Int) -> String {
    let onesName = onesDigit(number:number)
    let tensName = tensDigit(number:number)

    if number == 0 {
        return "zero"
    }
    else if number < 10 {
        return "\(onesName)"
    }
    else {
        return "\(tensName)-\(onesName)"
    }

}

print(twoDigits(number:number))

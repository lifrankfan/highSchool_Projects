// Add your code below
let ones = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
let teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "ninteen"]

let tens = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]


func onesPlace(number:Int) -> String {
    let onesDigit = number%10
    precondition((0..<ones.count).contains(onesDigit),
                 "onesDigit \(onesDigit) not working")
    return ones[onesDigit]
    
}

func tensPlace(number:Int) -> String {
    let tensDigit = (number/10)%10
    precondition((0..<tens.count).contains(tensDigit),
                 "tensPlace not working")
    
}

func numberAsWord(number:Int) -> String {
    let onesName = onesPlace(number:number)

    if number == 0 {
        return "zero"
    }
    if onesName <= 
}

// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
print(numberAsWord(number:5))
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


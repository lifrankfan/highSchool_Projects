// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let number : Int = 5
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

let ones = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

let teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "ninteen"]

let tens = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

let hundreds = ["", "one hundred", "two hundred", "three hundred", "four hundred", "five hundred", "six hundred", "seven hundred", "eight hundred", "nine hundred"]

func onesDigit(number:Int) -> String {
    let onesDigit = number % 10
    precondition((0 ..< ones.count).contains(onesDigit),
                  "onesPlace \(onesDigit) out of bounds for array one")
    return ones[onesDigit]
}


func tensDigit(number:Int) -> String {
    let tensPlaceDigit = (number / 10) % 10
    precondition( (0 ..< tens.count).contains(tensPlaceDigit) ,
                  "tensPlaceDigit \(tensPlaceDigit) out of bounds for array tens")
    return tens[tensPlaceDigit]
    
}

func hundredsDigit(number:Int) -> String {
    let hundredsPlaceDigit = (number / 100) % 10
    precondition((0 ..< hundreds.count).contains(hundredsPlaceDigit),
                 "hundredsPlaceDigit \(hundredsPlaceDigit) out of bounds for array hundreds")
    return hundreds[hundredsPlaceDigit]
}

func teensDigit(number:Int) -> String {
    let teensPlaceDigit = number % 10
        precondition( (0 ..< teens.count).contains(teensPlaceDigit) ,
                  "teensPlaceDigit \(teensPlaceDigit) out of bounds for array tens")
    return teens[teensPlaceDigit]
    
}

    
func threeDigits(number:Int) -> String {
    let onesName = onesDigit(number:number)
    let tensName = tensDigit(number:number)
    let hundredsName = hundredsDigit(number:number)
    let teensName = teensDigit(number:number)
    
    if number == 0 {
        return "zero"
    }
    else if number < 10 {
        return "\(onesName)"
    }
    else if number < 20 && number > 10 {
        return "\(teensName)"
    }
    else if number < 100{
        return "\(tensName)-\(onesName)"
    }
    else if number % 10 == 0 {
        return "\(hundredsName) and \(tensName)"
    }
    else {
        return "\(hundredsName) and \(tensName)-\(onesName)"
    }
}

print(threeDigits(number:number))

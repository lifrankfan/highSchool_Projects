// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let number : Int = 47_231
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

let ones = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

let teens = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "ninteen"]

let tens = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]


func threeDigits(number:Int) {
    let one = number%10
  //  let ten = (number/10) % 10
    let hundred = (number/100) % 10
   // let teen = (number/10) % 10
    let thousands = (number/1000) % 10
    let tenThousands = (number/10000) % 10

    let oneValue = ones[one]
  //  let tenValue = tens[ten]
    let hundredValue = ones[hundred]
    let thousandValue = tens[thousands]
//    let tenThousandValue =  ones[tenThousands]
//    let teensValue = teens[one]

    var newValue = ""
    if tenThousands > 0{
        newValue.append("\(oneValue)-")
    }
    if thousands > 0 {
        newValue.append("\(thousandValue) thousand")
    }
    if hundred > 0 {
        newValue.append("\(hundredValue) hundred")
    }
    print(newValue)
}

threeDigits(number:number)
/*
func threeDigits(number:Int) {
    let onesName = onesDigit(number:number)
    let tensName = tensDigit(number:number)
    let hundredsName = hundredsDigit(number:number)
    let teensName = teensDigit(number:number)
    let thousandsName = thousandsDigit(number:number)
    let tenThousandsName = tenThousandsDigit(number:number)
    
    let names = [onesName, tensName, hundredsName, teensName, thousandsName, tenThousandsName]
    
    let one = number%10
    let ten = (number/10) % 10
    let hundred = (number/100) % 10
    let teens = (number/10) % 10
    let thousands = (number/1000) % 10
    let tenThousands = (number/10000) % 10

    let array = [one, ten, hundred, teens, thousands, tenThousands]
    for x in 0 ... array.count {
        precondition((0 ..< names.count).contains(array.count),
                     "names not in array")
        if array[x] != 0 {
            print(names[x], terminator: "")
        }
    }
}

threeDigits(number:number)


 */


/*
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


func thousandsDigit(number:Int) -> String {
    let thousandsPlaceDigit = (number / 1000) % 10
    precondition((0 ..< ones.count).contains(thousandsPlaceDigit),
                 "thousandsPlaceDigit \(thousandsPlaceDigit) out of bounds for array ones")
    return ones[thousandsPlaceDigit]
}

func tenThousandsDigit(number:Int) -> String {
    let tenThousandsPlaceDigit = (number / 10000) % 10
    precondition((0 ..< ones.count).contains(tenThousandsPlaceDigit),
                 "thousandsPlaceDigit \(tenThousandsPlaceDigit) out of bounds for array ones")
    return tens[tenThousandsPlaceDigit]
}


func threeDigits(number:Int) -> String {
    let onesName = onesDigit(number:number)
    let tensName = tensDigit(number:number)
    let hundredsName = hundredsDigit(number:number)
    let teensName = teensDigit(number:number)
    let thousandsName = thousandsDigit(number:number)
    let tenThousandsName = tenThousandsDigit(number:number)
    
    
    if number == 0 {
        return "zero"
    }
    else if number < 10 {
        return "\(onesName)"
    }
    else if number / 100 < 20 && number / 100 > 10 {
        if number < 20 && number > 10 {
            return "\(teensName)"
        }
        else if number < 1000 {
            return "\(hundredsName) and \(teens) "
        }
        else if number < 10000 {
            return "\(thousandsName), \(hundredsName) and \(teens)"
        }
        else {
            return "\(tenThousandsName)-\(thousandsName) thousand \(hundredsName) \(tensName)-\(onesName)"
        }
    }
    else if number < 100{
        return "\(tensName)-\(onesName)"
    }
    else if number % 10 == 0 {
        return "\(hundredsName) and \(tensName)"
    }
    else if number < 1000 {
        return "\(hundredsName) and \(tensName)-\(onesName)"
    }
    else if number < 10000 {
        return "\(thousandsName) thousand, \(hundredsName) and \(tensName)-\(onesName)"
    }
    else {
        return "\(tenThousandsName)-\(thousandsName) thousand \(hundredsName) \(tensName)-\(onesName)"
    }
}

print(threeDigits(number:number))




 */

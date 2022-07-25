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


func printBill(dollars:Int, billValue:Int) -> Int {
    var billCount = 0
    var remainingDollars = dollars

    while remainingDollars >= billValue {
        billCount += 1
        remainingDollars -= billValue
    }
    if billCount > 0 {
        let printString = "\(billCount) x $\(billValue) bill"
        if billCount > 1 {
            print(printString + "s")
        }
        else {
            print(printString)
        }
    }
    return billCount
}
    

func printBills(dollars:Int) -> Int {
    var totalBillsIssued = 0
    var remainingDollars = dollars

    let hundredsValue = 100
    let hundredsIssued = printBill(dollars:remainingDollars, billValue:hundredsValue)
    totalBillsIssued += hundredsIssued
    remainingDollars -= hundredsIssued * hundredsValue

    let fiftiesValue = 50
    let fiftiesIssued = printBill(dollars:remainingDollars, billValue:fiftiesValue)
    totalBillsIssued += fiftiesIssued
    remainingDollars -= fiftiesIssued * fiftiesValue

    let twentiesValue = 20
    let twentiesIssued = printBill(dollars:remainingDollars, billValue:twentiesValue)
    totalBillsIssued += twentiesIssued
    remainingDollars -= twentiesIssued * twentiesValue

    let tensValue = 10
    let tensIssued = printBill(dollars:remainingDollars, billValue:tensValue)
    totalBillsIssued += tensIssued
    remainingDollars -= tensIssued * tensValue

    let fivesValue = 5
    let fivesIssued = printBill(dollars:remainingDollars, billValue:fivesValue)
    totalBillsIssued += fivesIssued
    remainingDollars -= fivesIssued * fivesValue

    let twosValue = 2
    let twosIssued = printBill(dollars:remainingDollars, billValue:twosValue)
    totalBillsIssued += twosIssued
    remainingDollars -= twosIssued * twosValue

    let onesValue = 1
    let onesIssued = printBill(dollars:remainingDollars, billValue:onesValue)
    totalBillsIssued += onesIssued
    remainingDollars -= onesIssued * onesValue

    return totalBillsIssued
}

func printCent(cents:Int, centsValue:Int, centName:String) -> Int {
    var remainingCents = cents
    var centCount = 0

    while remainingCents >= centsValue {
        centCount += 1
        remainingCents -= centsValue
    }
    let printString = "\(centCount) x \(centName)"
    if centCount == 1 {
        print(printString)
    } else if centCount > 1 {
        if centName == "penny" {
             print("\(centCount) x pennies")
        }
        else {
            print(printString + "s")
        }
    }
    return centCount
}
                                          

func printCents(cents:Int) -> Int{
    var totalCentsIssued = 0
    var remainingCents = cents

    let hDCoinValue = 50
    let hDCoinName = "half-dollar coin"
    let hDCoinIssued = printCent(cents:remainingCents, centsValue:hDCoinValue , centName:hDCoinName)
    totalCentsIssued += hDCoinIssued
    remainingCents -= hDCoinValue * hDCoinIssued

    let quartValue = 25
    let quartName = "quarter"
    let quartIssued = printCent(cents:remainingCents, centsValue:quartValue , centName:quartName)
    totalCentsIssued += quartIssued
    remainingCents -= quartValue * quartIssued

    let dimeValue = 10
    let dimeName = "dime"
    let dimeIssued = printCent(cents:remainingCents, centsValue:dimeValue , centName:dimeName)
    totalCentsIssued += dimeIssued
    remainingCents -= dimeValue * dimeIssued
    
    let nickelValue = 5
    let nickelName = "nickel"
    let nickelIssued = printCent(cents:remainingCents, centsValue:nickelValue , centName:nickelName)
    totalCentsIssued += nickelIssued
    remainingCents -= nickelValue * nickelIssued

    let pennyValue = 1
    let pennyName = "penny"
    let pennyIssued = printCent(cents:remainingCents, centsValue:pennyValue , centName:pennyName)
    totalCentsIssued += pennyIssued
    remainingCents -= pennyValue * pennyIssued

    return totalCentsIssued
}    

func currencyString(dollars:Int ,cents:Int) -> String {
   let dollarsString = "$\(dollars)"
   var centsString = "\(cents)"
   if centsString.count < 2 {
       centsString = "0" + centsString
   }
   let completeString = dollarsString + "." + centsString
   return completeString
}

func printDenominations(forSum:Int) {
    let change = forSum
    let dollars = change / 100
    let cents = change % 100
    let billsPrinted = printBills(dollars:dollars)
    let centsPrinted = printCents(cents:cents)
    print()
    print("Bills: \(billsPrinted)")
    print("Coins: \(centsPrinted)")
}      


func format(number:Int) -> String {
    let dollars = number / 100
    let cents = number % 100
    let end = currencyString(dollars:dollars,cents:cents)
    return end
}

func printReceipt(itemSubtotal:String, tip:String, tax:String, amountPaid:String) {
    print("Item Subtotal: \(itemSubtotal)")
    print("Tip: \(tip)")
    print("Tax: \(tax)")

    let total = number(string:itemSubtotal) + number(string:tip) + number(string:tax)
    let totalOwed = format(number:total)
    print("Total: " + totalOwed)
    print("Amount paid: \(amountPaid)")

    print("Change: ")
    let change = number(string:amountPaid) - total
    printDenominations(forSum:change)
    
}


      
// Add your code above


// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let itemSubtotal = "$733.00"
let tip = "$109.95"
let tax = "$58.64"
let amountPaid = "$1000.00"
printReceipt(itemSubtotal:itemSubtotal, tip:tip, tax:tax, amountPaid:amountPaid)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧




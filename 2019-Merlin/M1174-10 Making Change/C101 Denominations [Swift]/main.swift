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

func printDenominations(forSum:String) {
    let total = number(string:forSum) / 100
    let cents = number(string:forSum)
    print("Original sum: \(forSum)")
    bill(bill:total, cent:cents)
}

func bill(bill:Int, cent:Int) {
    let h = bill
    var hAmt = 0
    for x in 1 ... 9 {
        if h / (x*100) == 1 {
           hAmt = x
        }
    }
    if hAmt == 1 {
        print("\(hAmt) x $100 bill")
    }
    else if hAmt > 1{
        print("\(hAmt) x $100 bills")
    }
    let t = bill - hAmt * 100
    var fAmt = 0
    var tAmt = 0
    var tenAmt = 0
    for x in 1 ... 9 {
        if t / (x * 10) == 1 {
            tenAmt = x
        }
    }
    if tenAmt >= 5 {
        fAmt = 1
        tenAmt -= 5
    }
    if tenAmt / 2 >= 1 {
        tAmt = tenAmt / 2
        tenAmt -= tAmt*2
    }

    
    var fiveAmt = 0
    var twoAmt = 0
    var oAmt = 0
    let ones = bill - ((hAmt * 100) + (fAmt * 50) + (tAmt * 20) + (tenAmt * 10))
    for x in 1 ... 9 {
        if ones / x == 1 {
            oAmt = x
        }
    }
    if oAmt >= 5 {
        fiveAmt = 1
        oAmt -= 5
    }
    if oAmt / 2 >= 1 {
        twoAmt = oAmt / 2
        oAmt -= twoAmt*2
    }


    var cents = cent - ((hAmt * 10000) + (fAmt * 5000) + (tAmt * 2000) + (tenAmt * 1000) + (fiveAmt * 500) + (twoAmt * 200) + (oAmt * 100))
    var halfAmt = 0
    var qAmt = 0
    var dAmt = 0
    if cents >= 50 {
        halfAmt = 1
        cents -= halfAmt * 50
    }
    for x in 1 ... 4 {
        if cents / (25*x) >= 1 {
            qAmt = x
            cents -= qAmt * 25
        }
    }
    for x in 1 ... 9 {
        if cents / (10*x) == 1 {
            dAmt = x
            cents -= dAmt * 10
        }
    }
    

    var nAmt = 0
    var pAmt = 0
    for x in 1 ... 9 {
        if cents / x == 1 {
            pAmt = x
        }
    }
    if pAmt >= 5 {
        nAmt = 1
        pAmt -= 5
    }


    
    if fAmt == 1 {
        print("\(fAmt) x $50 bill")
    }
    else if fAmt != 0 {
        print("\(fAmt) x $50 bills")
    }
    if tAmt == 1 {
        print("\(tAmt) x $20 bill")
    }
    else if tAmt != 0 {
        print("\(tAmt) x $20 bills")
    }
    if tenAmt == 1 {
        print("\(tenAmt) x $10 bill")
    }
    else if tenAmt != 0 {
        print("\(tenAmt) x $10 bills")
    }
    if fiveAmt == 1 {
        print("\(fiveAmt) x $5 bill")
    }
    else if fiveAmt != 0 {
        print("\(fiveAmt) x $5 bills")
    }
    if twoAmt == 1 {
        print("\(twoAmt) x $2 bill")
    }
    else if twoAmt != 0 {
        print("\(twoAmt) x $2 bills")
    }
    if oAmt == 1 {
        print("\(oAmt) x $1 bill")
l    }
    else if oAmt != 0 {
        print("\(oAmt) x $1 bills")
    }
    if halfAmt == 1 {
        print("\(halfAmt) x half-dollar coin")
    }
    else if halfAmt != 0 {
        print("\(halfAmt) x half-dollar coins")
    }
        if qAmt == 1 {
        print("\(qAmt) x quarter")
    }
    else if qAmt != 0 {
        print("\(qAmt) x quarters")
    }
        if dAmt == 1 {
            print("\(dAmt) x dime")
    }
    else if dAmt != 0 {
        print("\(dAmt) x dimes")
    }
    if nAmt == 1 {
        print("\(nAmt) x nickel")
    }
    else if nAmt != 0 {
        print("\(nAmt) x nickels")
    }
    if pAmt == 1 {
        print("\(pAmt) x penny")
    }
    else if pAmt != 0 {
        print("\(pAmt) x pennies")
    }
    let tBills = hAmt + fAmt + tAmt + tenAmt + fiveAmt + twoAmt + oAmt
    let tCoins = halfAmt + qAmt + dAmt + nAmt + pAmt
    print("")
    print("Bills: \(tBills)")
    print("Coins: \(tCoins)")
}

    
// Add your code above


// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let sum = "$123.45"
printDenominations(forSum:sum)


// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧




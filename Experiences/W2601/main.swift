func division(dividend:Int, divisor:Int) -> Int {
    let quotient =  dividend / divisor
    return quotient
}

// This program will print the quotient of a division operation
func main() {
    var dividend : Int = 0
    var divisor : Int = 0

    dividend = dividend + 114
    divisor = divisor * 2

    let quotient = division(dividend:dividend, divisor:divisor)
    print("The quotient is: ", quotient)
}

// Invoke main
main()

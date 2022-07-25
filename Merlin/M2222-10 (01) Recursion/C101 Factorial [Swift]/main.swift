

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let n = 7
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
func fac(_ n:Int) -> Int{
    print("Calculating factorial(\(n))...")
    let num : Int
    if n > 1 {
        num = n * fac(n-1)
        print("Non-terminal case, returning \(num).")
    } else {
        print("Terminal case, returning 1.")
        num =  1
    }    
    return num
}
let x = fac(n)
print("The final result is: \(x).")

/*
let check = n

func fac(_ n:Int) -> Int{
    print("Calculating factorial(\(n))...")
    let num : Int
    if n > 1 {
        num = n * fac(n-1)
    } else {
        print("Terminal case, returning 1.")
        num =  1
    }
    if num != 1 {
        print("Non-terminal case, returning \(num).")
    }
    if check == n {
        print("The final result is: \(num).")
    }
    
    return num
}


let _ = fac(n)


 */

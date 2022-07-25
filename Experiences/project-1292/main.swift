func piIs(n:Int) -> Double {
    var inCircle = 1
    for _ in 1 ... n {
        let x = Double.random(in: 0.0 ..< 1.0)
        let y = Double.random(in: 0.0 ..< 1.0)
        if (x * x) + (y*y) <= 1 {
            inCircle += 1
        }
    }
    let pi = 4 * (Double(inCircle) / Double(n))
    return pi    
}

print("pi is: \(piIs(n:10000))")

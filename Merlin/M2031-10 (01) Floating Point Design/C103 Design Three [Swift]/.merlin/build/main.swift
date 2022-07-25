// Add your code below
struct Real {
    let isNegative: Bool
    let significandBitPattern: UInt64
    let exponentBitPattern: UInt

    public init(_ d:Double) {
        isNegative = (d<0)
        significandBitPattern = d.significandBitPattern
        exponentBitPattern = d.exponentBitPattern
    }

    public init(_ n:Int) {
        isNegative = (n<0)
        significandBitPattern = UInt64(Double(n).significandBitPattern)
        exponentBitPattern = UInt(Double(n).exponentBitPattern)
    }


//method
    public func asDouble() -> Double {
        let floatingPointSign = isNegative ?
          FloatingPointSign.minus:FloatingPointSign.plus
        let d  = Double(sign:floatingPointSign,exponentBitPattern:exponentBitPattern,significandBitPattern:significandBitPattern)
        return d
    }
    
}
// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
func random() -> Double {
  let d = Double.random(in: Double.leastNormalMagnitude ... Double.greatestFiniteMagnitude)
  return Bool.random() ? d : -d
}
func validate(double:Double, real:Real) {
  precondition(real.asDouble() == double,
               "real.asDouble \(real.asDouble()) doesn't match double \(double)")
  precondition(double.sign == (real.isNegative ? FloatingPointSign.minus : FloatingPointSign.plus),
               "double.sign \(double.sign) doesn't match real.isNegative \(real.isNegative)")
  precondition(double.significandBitPattern == real.significandBitPattern,
               "double.significandBitPattern \(double.significandBitPattern) doesn't match real.signficiandBitPattern \(real.significandBitPattern)")
  
  precondition(double.exponentBitPattern == real.exponentBitPattern,
               "double.exponentBitPattern \(double.exponentBitPattern) doesn't match real.expondentBitPattern \(real.exponentBitPattern)")
}
for _ in 0 ..< 100 {
  // da and ra are always created as a random double
  let da = random()
  let ra = Real(da)
  // db may be created from a random double or an int
  let db : Double
  let rb : Real
  if Bool.random() {
      db = random()
      rb = Real(db)
  } else {
      let n = Int.random(in: Int.min ... Int.max)
      db = Double(n)
      rb = Real(n)
  }
  
  validate(double: da, real: ra)
  validate(double: db, real: rb)
  
}
print("Checks completed")
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below
public struct Real:CustomStringConvertible{
    let isNegative: Bool
    let significandBitPattern: UInt64
    let exponentBitPattern: UInt

    public init (_ d: Double) {
        isNegative = (d<0)
        significandBitPattern = d.significandBitPattern
        exponentBitPattern = d.exponentBitPattern
    }

    public init (_ n: Int) {
        isNegative = (n<0)
        significandBitPattern = UInt64(Double(n).significandBitPattern)
        exponentBitPattern = UInt(Double(n).exponentBitPattern)
    }

    public func asDouble() -> Double {
        let floatingPointSign = isNegative ?
          FloatingPointSign.minus:FloatingPointSign.plus
        let d  = Double(sign:floatingPointSign,exponentBitPattern:exponentBitPattern, significandBitPattern:significandBitPattern)
        return d
    }

    public func add(_ other: Real) -> Real {
        let sum = self.asDouble() + other.asDouble()
        return sum.asReal()
    }
    
    public func subtract(_ other: Real) -> Real {
        let dif = self.asDouble() - other.asDouble()
        return dif.asReal()
    }
    
    public func divide(_ other: Real) -> Real {
        let divisor = self.asDouble() / other.asDouble()
        return divisor.asReal()
    }

    public func multiply(_ other: Real) -> Real {
        let product = self.asDouble() * other.asDouble()
        return product.asReal()
    }
     

    public var description: String {
        return "\(asDouble())"
    }
}

extension Double {
    public func asReal() -> Real {
        return Real(self)
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
  precondition("\(real)" == "\(double)",
               "real \(real) doesn't match double \(double)")
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
  precondition(ra.add(rb).asDouble() == da + db,
               "Adding reals using .add didn't yield the result expected: \(da) + \(db) = \(da + db)")
               
  precondition(ra.subtract(rb).asDouble() == da - db,
               "Subtracting reals using .subtract didn't yield the result expected: \(da) - \(db) = \(da - db)")
  precondition(ra.multiply(rb).asDouble() == da * db,
               "Multiplying reals using .multiply didn't yield the result expected: \(da) * \(db) = \(da * db)")
  precondition(ra.divide(rb).asDouble() == da / db,
               "Dividing reals using .divide didn't yield the result expected: \(da) / \(db) = \(da / db)")
  
}
print("Checks completed")
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


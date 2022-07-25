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

extension Real{
    static func +(lhs:Real,rhs:Real) -> Real {
        return lhs.add(rhs)
    }
    static func -(lhs:Real,rhs:Real) -> Real {
        return lhs.subtract(rhs)
    }
    static func /(lhs:Real,rhs:Real) -> Real {
        return lhs.divide(rhs)
    }
    static func *(lhs:Real,rhs:Real) -> Real {
        return lhs.multiply(rhs)
    }
}
    

// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
print("Checks completed")
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


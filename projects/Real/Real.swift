public struct Real: CustomStringConvertible {
    /////////////////////////////////////////////////////////////////////
    //properties
    /////////////////////////////////////////////////////////////////////
    private let isNegative: Bool //sign
    private let significandBitPattern: UInt64 //mantissa
    private let exponentBitPattern: UInt //exponet

    /////////////////////////////////////////////////////////////////////
    //initializers
    /////////////////////////////////////////////////////////////////////
    public init(_ d:Double) {
        isNegative = (d < 0)
        significandBitPattern = d.significandBitPattern
        exponentBitPattern = d.exponentBitPattern
    }
    
    public init(_ i:Int) {
        isNegative = (i < 0)
        significandBitPattern = UInt64(Double(i).significandBitPattern)
        exponentBitPattern = UInt(Double(i).exponentBitPattern)
    }
        
    /////////////////////////////////////////////////////////////////////
    //methods
    /////////////////////////////////////////////////////////////////////
    public func asDouble() -> Double {
        let floatingPointSign = isNegative ? //? = evaluate the code to the left, then assign to minus or plus
          FloatingPointSign.minus:
          FloatingPointSign.plus
        let d = Double(sign: floatingPointSign,
                       exponentBitPattern: exponentBitPattern,
                       significandBitPattern: significandBitPattern)
        return d
    }
    
    public func add(_ other: Real) -> Real {
        let sum = self.asDouble() + other.asDouble()
        return sum.asReal()
    }

    public func subtract(_ other: Real) -> Real {
        let difference = self.asDouble() - other.asDouble()
        return difference.asReal()
    }

        public func multiply(_ other: Real) -> Real {
        let product = self.asDouble() * other.asDouble()
        return product.asReal()
    }

        public func divide(_ other: Real) -> Real {
        let quotient = self.asDouble() / other.asDouble()
        return quotient.asReal()
    }

    //protocal CustomStringConvertable
    public var description: String {
        return "\(asDouble())"
    }
}

extension Real {
    static func +(lhs:Real, rhs:Real) -> Real { //left hand side and right hand side
        return lhs.add(rhs)
    }
    static func -(lhs:Real, rhs:Real) -> Real { //left hand side and right hand side
        return lhs.subtract(rhs)
    }
        static func *(lhs:Real, rhs:Real) -> Real { //left hand side and right hand side
        return lhs.multiply(rhs)
        }
        static func /(lhs:Real, rhs:Real) -> Real { //left hand side and right hand side
        return lhs.divide(rhs)
    }
}

extension Double {
    public func asReal() -> Real {
        return Real(self)
    }
}

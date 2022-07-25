import Foundation

struct Real {
    // properties
    let sign : Bool
    var expo : Int
    var mant : Double
    // initializer
    init(_ d:Double) {
        sign = d < 0
        
    }
    
    init(_ n:Int) {
    }

    // functions
    func add(_ other:Real) -> Real {
        

        
    }
}


let r = Real(1) // would use init Int
let a = Real(1.2) // would use init Double
let b = Real(3.4)
let c = a.add(b)


/*
struct Real {
    // properties
    
    // initializer
    init(_ d:Double) {
    }
    init(_ n:Int) {
    }

    // functions
    func add(_ other:Real) -> Real {
        

        
    }
}


let r = Real(1) // would use init Int
let a = Real(1.2) // would use init Double
let b = Real(3.4)
let c = a.add(b)



 
 */

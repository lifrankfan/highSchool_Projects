/*
 class LSystem  {

    private let alphabet: Set<Character>
    private let axiom: String
    private let productionRules: ProductionRules

    public init(alphabet: Set<Character>, axiom: String, productionRules: [ProductionRule]) {
        self.alphabet = alphabet
        self.axiom = axiom
        self.productionRules = ProductionRules(alphabet:alphabet, productionRules: productionRules)
    }

    func nonTerminals() -> Set<Character> {
        return Set(productionRules.nonTerminals())
    }

    func terminals() -> Set<Character> {
        return Set(productionRules.nonTerminals())
    }

    func produce(generationCount:Int) -> String{
        return (generationCount == 0) ?
        axiom : produce(generationCount: generationCount - 1).map {
            productionRules.successor(predecessor: $0) }.joined()
    }
        

    /*
    func produce(generationCount:Int, initiator:String? = nil) -> String {
        
    }
    
     */

}

func main () {
    var alphabet = Set<Character>()
    var axiom = String()
    var productionRules = [ProductionRule]()
    
    // read from standard input
    while let line = readLine() {
        let arguments = line.split(separator:":")
        precondition(arguments.count >= 1, "At least one argument is required")
        let command = arguments[0]
    // parse the input, evaluate the commands, create the needed structures
        switch command {
        case "productionRule":
            let ruleSplit = String(arguments[1]).components(separatedBy:" -> ")
            let predecessor = Character(ruleSplit[0])
            let successor = ruleSplit[1]
            productionRules.append(ProductionRule(predecessor: predecessor, successor: successor))
        case "alphabet":
            alphabet = Set(Array(arguments[1]))
        case "axiom":
            axiom = String(arguments[1])
        case "generationCount":
            let lindenmyer = LSystem(alphabet:alphabet, axiom:axiom, productionRules: productionRules)
            print("terminals:\(lindenmyer.nonTerminals().sorted())")
            print("nonTerminals:\(lindenmyer.nonTerminals().sorted())")
            for count in 0 ... Int(arguments[1])! {
                print("generation[\(count)]:\(lindenmyer.produce(generationCount: Int(count)))")
            }

        default:
            fatalError("there are no arguments")
        }
    }
        
    // create and invoke produce() on L-system



    while let line = readLine() {
        let arguments = line.split(separator:":")
        precondition(arguments.count >= 1, "At least one argument is required")
        print(arguments)
    }
    
}


 */

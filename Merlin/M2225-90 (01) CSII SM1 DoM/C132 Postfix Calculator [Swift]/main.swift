class Stack {
    var integers = [Int](repeating:0, count: 100)
    var topOfStackIndex = -1

    func push(_ newInteger: Int) {
        precondition(topOfStackIndex < integers.count - 1, "Unable to push, already at top of stack")
        topOfStackIndex += 1
        integers[topOfStackIndex] = newInteger
    }

    func pop() -> Int {
        let integer = peek()
        topOfStackIndex -= 1
        return integer
    }

    func peek() -> Int {
        precondition(!isEmpty(), "Stack is empty")
        return integers[topOfStackIndex]
    }

    func isEmpty() -> Bool {
        return topOfStackIndex == -1
    }

    func dump() {
        if !isEmpty() {
            for index in 0 ... topOfStackIndex {
                print(integers[index], terminator:" ")
            }
        }
        print()
    }
}

func main() {
    let stack = Stack()
    var x : Int
    var y : Int
    var t : Int


    while let line = readLine() {
        switch line {
        case "+":
            x = stack.pop()
            y = stack.pop()
            t = y + x         
            print("\(t)=\(y)+\(x)")
            stack.push(t)            
        case "*":
            x = stack.pop()
            y = stack.pop()
            t = y * x     
            print("\(t)=\(y)*\(x)")
            stack.push(t)            
        case "-":
            x = stack.pop()
            y = stack.pop()
            t = y - x     
            print("\(t)=\(y)-\(x)")
            stack.push(t)            
        case "/":
            x = stack.pop()
            y = stack.pop()
            t = y / x     
            print("\(t)=\(y)/\(x)")
            stack.push(t)            
        default:
            if let integer = Int(line) {
                stack.push(integer)
            }
        }
    }
    stack.dump()
}

main()

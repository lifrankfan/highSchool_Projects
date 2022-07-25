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

    while let line = readLine() {
        let arguments = line.split(separator:" ")
        precondition(arguments.count >= 1, "At least one argument is required.")
        let command = arguments[0]

        switch command {
        case "PUSH":
            precondition(arguments.count == 2, "Exactly two arguments required for PUSH")
            guard let integer = Int(arguments[1]) else {
                fatalError("Second argument to PUSH must be an integer")
            }
            stack.push(integer)
        case "POP":
            print(stack.pop())
        case "PEEK":
            print(stack.peek())
        case "ISEMPTY":
            print(stack.isEmpty())
        case "DUMP":
            stack.dump()
        default:
            fatalError("I don't know what you mean with '\(command)'.")
        }
    }
}

main()

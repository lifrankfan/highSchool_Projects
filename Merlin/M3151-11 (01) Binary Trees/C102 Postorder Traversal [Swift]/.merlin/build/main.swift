// Add your code below:


class Node {
    private var value : String
    private var childLeft : Node? = nil
    private var childRight : Node? = nil

    //goes here when no parameter supplied
    init() {
        self.value = ""
    }

    // goes here when string is a value
    init(value: String) {
        self.value = value
    }
    
    func add(leftChild:Node?) {
        childLeft = leftChild
    }

    func add(rightChild:Node?) {
        childRight = rightChild
    }

    func preorder() -> [Node]{
        var nodes = [Node]()
        //makes itself new root
        nodes.append(self)
        //recursively create new arrays for new "roots"
        if (childLeft != nil) {nodes += childLeft!.preorder()}
        if (childRight != nil) {nodes += childRight!.preorder()}               
        return nodes
    }

    func postorder() -> [Node]{
        var nodes = [Node]()
        if (childLeft != nil) {nodes += childLeft!.postorder()}
        if (childRight != nil) {nodes += childRight!.postorder()}
        nodes.append(self)
        return nodes
        
    }

    static func nodeValues(_ nodes:[Node]) -> [String] {        
        return nodes.map{$0.value}
    }
}



// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let C = Node(value:"root")
let CLC = Node(value:"locket")
let CLCLC = Node(value:"common")
let CLCLCRC = Node(value:"tramp")
let CLCLCRCLC = Node(value:"entertain")
CLCLCRC.add(leftChild:CLCLCRCLC)
CLCLC.add(rightChild:CLCLCRC)
CLC.add(leftChild:CLCLC)
C.add(leftChild:CLC)
let CRC = Node(value:"drunk")
let CRCRC = Node(value:"crown")
CRC.add(rightChild:CRCRC)
C.add(rightChild:CRC)
let values = Node.nodeValues(C.postorder())
for value in values {
	print(value)
}
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧
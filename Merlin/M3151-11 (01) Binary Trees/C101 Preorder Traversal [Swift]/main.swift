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

    func preorder() -> [Node] {
        return Node.preorder(node:self)
    }
    
    static func preorder(node: Node?) -> [Node]{
        
        var nodeList = [Node]()
        if let node = node {
            nodeList.append(node)
            //contentsOf appends an entire array
            nodeList.append(contentsOf: preorder(node: node.childLeft))
            nodeList.append(contentsOf: preorder(node: node.childRight))            
        }
/*
        //makes itself new root
        nodes.append(self)
        //recursively create new arrays for new "roots"
        if (childLeft != nil) {nodes += childLeft!.preorder()}
        if (childRight != nil) {nodes += childRight!.preorder()}

        
         */
        
        return nodeList
    }

    static func depthorder(node: Node?) -> [Node] {
        var nodeList = [Node]()
        for level in 1 ... height(node:node) {
            nodeList.append(contentOf: depthorderLevel(node:node, level:level))
        }
    }
    
    static func nodeValues(_ nodes:[Node]) -> [String] {        
        return nodes.map{$0.value}
    }
}



// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let C = Node(value:"root")
let CLC = Node(value:"honeybee")
let CLCLC = Node(value:"weasel")
let CLCLCLC = Node(value:"cricket")
let CLCLCLCRC = Node(value:"brutal")
CLCLCLC.add(rightChild:CLCLCLCRC)
CLCLC.add(leftChild:CLCLCLC)
let CLCLCRC = Node(value:"weed")
CLCLC.add(rightChild:CLCLCRC)
CLC.add(leftChild:CLCLC)
C.add(leftChild:CLC)
let values = Node.nodeValues(C.preorder())
for value in values {
    print(value)
}
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

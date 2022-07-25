// Add your code below:
import Foundation

class Node : CustomStringConvertible {

    private var value: String
    private var children: [Node]
    

    public var description : String {

        if children.count <= 0 {
            return value
        } else {
            var childrenMap = children.map{$0.description}
            childrenMap.sort()
            let arrayString = childrenMap.joined(separator: ", ")
            return ("\(value){\(arrayString)}")
        }       
    }

    func add(child:Node) {
        children.append(child)
    }

        
    init() {
        self.value = ""
        self.children = [Node]()
    }

    init(value: String) {
        self.value = value
        self.children = [Node]()
    }

}



// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let root = Node(value:"calm")
print(root)
let m0 = Node(value:"potato")
print(m0)
root.add(child:m0)
print(root)
let m0n0 = Node(value:"plan")
m0.add(child:m0n0)
let m0n1 = Node(value:"copper")
m0.add(child:m0n1)
print(root)
let m1 = Node(value:"enchanting")
print(m1)
root.add(child:m1)
print(root)
let m1n0 = Node(value:"erect")
m1.add(child:m1n0)
let m1n1 = Node(value:"base")
m1.add(child:m1n1)
print(root)
let m2 = Node(value:"delicate")
print(m2)
root.add(child:m2)
print(root)
let m2n0 = Node(value:"race")
m2.add(child:m2n0)
print(root)
let m3 = Node(value:"waste")
print(m3)
root.add(child:m3)
print(root)
let m3n0 = Node(value:"reward")
m3.add(child:m3n0)
print(root)
let m4 = Node(value:"rod")
print(m4)
root.add(child:m4)
print(root)
let m4n0 = Node(value:"observe")
m4.add(child:m4n0)
print(root)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

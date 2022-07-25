// Add your code below:
import Foundation

class Node : CustomStringConvertible {

    private var value: String
    private var children: [Node]

    init() {
        self.value = ""
        self.children = [Node]()
    }

    init(value: String) {
        self.value = value
        self.children = [Node]()
    }



    public var description : String {
        var ret : String

        if children.count <= 0 {
            ret = "\(value)"
        } else {
            let ret2 = "\(value)\(children)"
            let ret3 = ret2.replacingOccurrences(of: "[", with: "{")
            ret = ret3.replacingOccurrences(of: "]", with: "}")
        }
        return ret
    }

    func add(child:Node) {
        children.append(child)
    }
}

// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let root = Node(value:"prevent")
print(root)
let m0 = Node(value:"holistic")
print(m0)
root.add(child:m0)
print(root)
let m0n0 = Node(value:"repeat")
m0.add(child:m0n0)
let m0n1 = Node(value:"fit")
m0.add(child:m0n1)
print(root)
let m1 = Node(value:"grandfather")
print(m1)
root.add(child:m1)
print(root)
let m1n0 = Node(value:"deer")
m1.add(child:m1n0)
let m1n1 = Node(value:"unnatural")
m1.add(child:m1n1)
print(root)
let m2 = Node(value:"questionable")
print(m2)
root.add(child:m2)
print(root)
let m2n0 = Node(value:"amuck")
m2.add(child:m2n0)
let m2n1 = Node(value:"snow")
m2.add(child:m2n1)
print(root)
let m3 = Node(value:"careful")
print(m3)
root.add(child:m3)
print(root)
let m3n0 = Node(value:"ocean")
m3.add(child:m3n0)
print(root)
let m4 = Node(value:"visitor")
print(m4)
root.add(child:m4)
print(root)
print(root)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

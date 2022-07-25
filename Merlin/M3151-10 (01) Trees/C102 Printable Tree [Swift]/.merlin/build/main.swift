
// Add your code below:
import Foundation

class Node : CustomStringConvertible {

    var value: String
    var children: [Node]

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
}

// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let root = Node(value:"literate")
print(root)
let m0 = Node(value:"dizzy")
print(m0)
root.children.append(m0)
print(root)
let m0n0 = Node(value:"fretful")
m0.children.append(m0n0)
let m0n1 = Node(value:"advise")
m0.children.append(m0n1)
print(root)
let m1 = Node(value:"glib")
print(m1)
root.children.append(m1)
print(root)
let m1n0 = Node(value:"distinct")
m1.children.append(m1n0)
print(root)
let m2 = Node(value:"puzzled")
print(m2)
root.children.append(m2)
print(root)
print(root)
let m3 = Node(value:"ajar")
print(m3)
root.children.append(m3)
print(root)
let m3n0 = Node(value:"distance")
m3.children.append(m3n0)
let m3n1 = Node(value:"carriage")
m3.children.append(m3n1)
print(root)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

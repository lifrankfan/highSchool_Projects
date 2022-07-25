// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let x = false
let y = false
let z = true

let p = true
let q = false
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧




// 2.  Print true
print(true)
// 3.  Print false
print(false)
// 4.  Print the Boolean values referenced by the constants x, y, and z separated by forward slashes
print(x, y, z, separator: "/")
// 5.  Print the result of the conjunction of x and y
print(x && y)
// 6.  Print the result of the conjunction of x, y, and z
print(x && y && z)
// 7.  Print the expression and result of the conjunction of x, y, and z
print("x && y && z", "\(x) && \(y) && \(z)", x && y && z, separator: " => ")
// 8.  Print the result of the disjunction of x and y
print(x || y)
// 9.  Print the result of the disjunction of x, y, and z
print(x || y || z)
// 10. Print the expression and result of the disjunction of x, y, and z
print("x || y || z", "\(x) || \(y) || \(z)", x || y || z, separator: " => ")
// 11. Print the expression and the negation of x
print("!x", "!\(x)", !x,  separator: " => ")
// 12. Print the expression and result of the equivalence of x and y
print("x == y", "\(x) == \(y)", x == y, separator: " => ")
// 13. Print the result of exlusive or'ing y and not z
print(y != !z)
// 14. Print the result of p implies q
print(!p || q)

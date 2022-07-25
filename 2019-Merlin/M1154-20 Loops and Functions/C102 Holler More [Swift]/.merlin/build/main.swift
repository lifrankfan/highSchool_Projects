// Add your code below:
var x = 1
var y = 0
func hollers(from: String, to: String, repeated:Int){
    print("\(from) hollers ", terminator: "")
    while x <= repeated {
        print("\(to)", terminator: "")
        while y < x - 1{
            print("!", terminator: "")
            y += 1
        }
        if x != repeated {
            print("!, ", terminator: "")
        }
        else {
            print("!")
        }
        x += 1
        y = 0
    }
    x = 1
}
var z = 0
func hollersAndPrintCount(from: String, to: String, repeated:Int){
    print("\(from) hollers ", terminator: "")
    z += from.count
    z += 9
    while x <= repeated {
        print("\(to)", terminator: "")
        z += to.count
        while y < x - 1{
            print("!", terminator: "")
            z += 1
            y += 1
        }
        if x != repeated {
            print("!, ", terminator: "")
            z += 3
        }
        else {
            print("!")
            z += 1
        }
        x += 1
        y = 0
    }
    x = 1
    print(z)
    z = 0
}

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let _ = hollers(from:"Liam", to:"Tyler", repeated:4)
hollersAndPrintCount(from:"Liam", to:"Tyler", repeated:4)
let _ = hollers(from:"Dylan", to:"Melanie", repeated:5)
hollersAndPrintCount(from:"Dylan", to:"Melanie", repeated:5)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

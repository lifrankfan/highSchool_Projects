// Add your code below:
//repeats
var x = 1
//exclamations
var y = 0
func hollers(from: String, to:String, repeated:Int){
    print("\(from) hollers ", terminator: "")
    while x <= repeated {
        print("\(to)", terminator: "")
        while y < x - 1 {
            print("!", terminator: "")
            y += 1
        }
        if x != repeated {
            print("!, ", terminator: "")
        }
        else {
            print("!")
        }
        y = 0
        x += 1
    }
    x = 1
}
//characters in print
var z = 0
func hollersAndPrintCount(from: String, to:String, repeated:Int){
    print("\(from) hollers ", terminator: "")
    z += from.count + 9
    while x <= repeated {
        print("\(to)", terminator: "")
        z += to.count
        while y < x - 1 {
            print("!", terminator: "")
            y += 1
            z += 1
        }
        if x != repeated {
            print("!, ", terminator: "")
            z += 3
        }
        else {
            print("!")
            z += 1
        }
        y = 0
        x += 1
    }
    x = 1
    print(z)
    z = 0
}
// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let _ = hollers(from:"Bob", to:"Alice", repeated:3)
hollersAndPrintCount(from:"Bob", to:"Alice", repeated:3)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

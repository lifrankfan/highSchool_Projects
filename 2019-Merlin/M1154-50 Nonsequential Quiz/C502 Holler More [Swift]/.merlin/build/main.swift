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
let _ = hollers(from:"David", to:"Samantha", repeated:4)
hollersAndPrintCount(from:"David", to:"Samantha", repeated:4)
let _ = hollers(from:"Margaret", to:"Jennifer", repeated:4)
hollersAndPrintCount(from:"Margaret", to:"Jennifer", repeated:4)
let _ = hollers(from:"Brian", to:"Amy", repeated:4)
hollersAndPrintCount(from:"Brian", to:"Amy", repeated:4)
let _ = hollers(from:"Savannah", to:"Alyssa", repeated:4)
hollersAndPrintCount(from:"Savannah", to:"Alyssa", repeated:4)
let _ = hollers(from:"Blake", to:"Lucy", repeated:1)
hollersAndPrintCount(from:"Blake", to:"Lucy", repeated:1)
let _ = hollers(from:"Blake", to:"Chloe", repeated:1)
hollersAndPrintCount(from:"Blake", to:"Chloe", repeated:1)
let _ = hollers(from:"Robert", to:"Ashley", repeated:5)
hollersAndPrintCount(from:"Robert", to:"Ashley", repeated:5)
let _ = hollers(from:"James", to:"Kellie", repeated:5)
hollersAndPrintCount(from:"James", to:"Kellie", repeated:5)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

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
//        if y == x && y != repeated {
//                print(", ", terminator: "")
 //           }
        x += 1
        y = 0
    }
    x = 1
}





// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
hollers(from:"Jason", to:"Jayden", repeated:1)
hollers(from:"Anthony", to:"Michael", repeated:3)
hollers(from:"Robert", to:"Aaliyah", repeated:4)
hollers(from:"Kyle", to:"Ryan", repeated:4)
hollers(from:"Hannah", to:"Jonah", repeated:3)
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

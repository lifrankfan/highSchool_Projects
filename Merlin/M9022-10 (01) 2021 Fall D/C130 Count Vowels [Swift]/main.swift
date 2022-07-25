// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let strings = [
  "apple",
  "banana",
  "carrot"
]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

let vowels = ["a", "e", "i", "o", "u"]
var vcount = 0
var cons = 0
//var charC = 0

for index in strings {
    /*
    print(index)
    for char in index {
        print(char)
    }
    
    print(index)
    for v in vowels {
        print(v)
    }


    
     */
     

    
    for char in index {
        
        cons += 1
//        charC += 1
        for v in vowels {            
            if char == v {
                vcount += 1
            }
        }
    }
    var c = cons - vcount
    print("\(index):\(vcount),\(c)")

    
   
    
    vcount = 0
//    c = 0
    cons = 0
    
    
}





// Add your code above

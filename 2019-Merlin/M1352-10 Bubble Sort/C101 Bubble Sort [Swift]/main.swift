// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧
// Add your code below:
var sortedIntegers = unsortedIntegers

func swap(integers:inout [Int], firstIndex: Int, secondIndex:Int) {


    let firstI = integers[firstIndex]
    let secondI = integers[secondIndex]
    
    integers.remove(at:firstIndex)
    integers.insert(secondI, at:firstIndex)
    integers.remove(at:secondIndex)
    integers.insert(firstI, at:secondIndex)
}

func bubble() {
    var pass = 0
    var passSwap = 0
    var totalSwap = 0
    var x = 1
    var lastTime = false
    print("Pass: \(pass), Swaps: \(passSwap)/\(totalSwap), Array: \(sortedIntegers)")            
    repeat {
        x += 1

        for index in 0 ..< sortedIntegers.count - 1 {
            if sortedIntegers[index] > sortedIntegers[index+1] {
                passSwap += 1
//                print(passSwap)
                totalSwap += 1
               // print(totalSwap)
                swap(integers:&sortedIntegers,firstIndex:index,secondIndex:index+1)                
            }
        }
        
        pass += 1
        print("Pass: \(pass), Swaps: \(passSwap)/\(totalSwap), Array: \(sortedIntegers)")            
        if passSwap == 0 {
            lastTime = true
        }
        passSwap = 0
    } while lastTime == false && x < sortedIntegers.count
    
    
}
bubble()









/*
 
func bubble() {
    var pass = 1
    var passSwap = 0
    var totalSwap = 0
    print("Pass: 0, Swaps: \(passSwap)/\(totalSwap), Array: \(sortedIntegers)")
    for _ in 1 ..< sortedIntegers.count - 1 {
        for index in 0 ..< sortedIntegers.count - 1 {
            if sortedIntegers[index] > sortedIntegers[index+1] {
                passSwap += 1
                totalSwap += 1
                swap(integers:&sortedIntegers,firstIndex:index,secondIndex:index+1)       
            } 
        }
        if passSwap != 0 {
            print("Pass: \(pass), Swaps: \(passSwap)/\(totalSwap), Array: \(sortedIntegers)")
            pass += 1
        }
        passSwap = 0
        
    }
    print("Pass: \(pass), Swaps: \(passSwap)/\(totalSwap), Array: \(sortedIntegers)")
}

 
bubble()


 */

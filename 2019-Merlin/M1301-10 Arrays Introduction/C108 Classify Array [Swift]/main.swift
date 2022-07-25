// Add your code below:

func classify(integers:[Int]) -> Int {
    var array = 0
    var odds : [Int] = []
    var evens : [Int] = []
    var neg : [Int] = []
    var pos : [Int] = []
    for number in 0 ..< integers.count {
        if integers[number] > 0 {
            pos.append(integers[number])
            if integers[number] % 2 != 0 {
                odds.append(integers[number])
                array += 1
            }
            else if integers[number] % 2 == 0 {
                evens.append(integers[number])
                array += 1
            }
        }
        if integers[number] < 0 {
            neg.append(integers[number])
            if integers[number] % 2 != 0 {
                odds.append(integers[number])
                array += 1
            }
            else if integers[number] % 2 == 0 {
                evens.append(integers[number])
                array += 1
            }           
        }          
    }
    if odds.count != 0 {
        for index in 0 ..< odds.count-1 {
            print(odds[index], terminator: ",")
        }
    }
    print(odds.last!)
    if evens.count != 0 {
        for index in 0 ..< evens.count-1 {
            print(evens[index], terminator: ",")
        }
    }
    print(evens.last!)
    if neg.count != 0 {
        for index in 0 ..< neg.count-1 {
            print(neg[index], terminator: ",")
        }
    }
    print(neg.last!)
    if pos.count != 0 {
        for index in 0 ..< pos.count-1 {
            print(pos[index], terminator: ",")
        }
    }
    print(pos.last!)
    return array * 2
}
// Add your code above

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let integers = [12, 14, -5, 7]
print(classify(integers:integers))
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

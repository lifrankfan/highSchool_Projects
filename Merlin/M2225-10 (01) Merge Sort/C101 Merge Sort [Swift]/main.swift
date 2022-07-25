import Foundation
// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [38, 27, 43, 3, 9, 82, 10]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
print("Array: \(unsortedIntegers)")

func mergeSort(_ array: [Int]) -> [Int] {
    guard array.count > 1 else { return array }
    
    let mid = Int(ceil(Double(array.count)/2))
    //print(mid)
    
    var leftArray = (Array(array[0..<mid]))
    print("Array: \(leftArray)")
    leftArray = mergeSort(leftArray)
    
    var rightArray = (Array(array[mid..<array.count]))
    print("Array: \(rightArray)")
    rightArray = mergeSort(rightArray)

    print("Array: \(merge(leftArray, rightArray))")
    
    return merge(leftArray, rightArray)
}

    
func merge(_ leftArray:[Int],_ rightArray:[Int]) -> [Int] {
    var lStart = 0
    var rStart = 0

    var tempArray : [Int] = []
    
    // if both left and right arrays have stuff, append smaller
    while lStart < leftArray.count && rStart < rightArray.count {
        if leftArray[lStart] < rightArray[rStart] {
            tempArray.append(leftArray[lStart])
            lStart += 1            
        }
        else if rightArray[rStart] < leftArray[lStart] {
            tempArray.append(rightArray[rStart])
            rStart += 1
        }
        else { //if both numbers r equal
            tempArray.append(leftArray[lStart])
            lStart += 1
            tempArray.append(rightArray[rStart])
            rStart += 1            
        }
    }
    // if no more elements in other array
    while lStart < leftArray.count {
        tempArray.append(leftArray[lStart])
        lStart += 1
    }
    while rStart < rightArray.count {
        tempArray.append(rightArray[rStart])
        rStart += 1
    }
    return tempArray
}

let _ = mergeSort(unsortedIntegers)




/*
let mid = unsortedIntegers.count / 2
print(mid)
let leftStart = 0
let leftEnd = mid
let rightStart = mid+1
let rightEnd = unsortedIntegers.count-1

var leftA = [Int]()
var rightA = [Int]()

func sort(_ array:inout [Int],_ start:Int,_ end:Int) {
    for x in start ... end {
        array.append(unsortedIntegers[x])
    }
}

sort(&leftA,leftStart,leftEnd)
sort(&rightA,rightStart,rightEnd)
print(leftA)
//print(rightA)


func merge(_ start:Int,_ mid:Int,_ end:Int) {
    // left start and end, right start and end
    var temp : [Int]
    var Ls = start 
    let Le = mid
    var Rs = Le + 1
    let Re = end
    var tracker = 0
    while Ls != Le && Rs != Re {
        if unsortedIntegers[Ls] <= unsortedIntegers[Rs] {
            temp.insert(unsortedIntegers[Ls], at:tracker)
            Ls += 1
        }
        else {
            temp.insert(unsortedIntegers[Rs], at:tracker)
            Rs += 1
        }
        tracker += 1
    }
    while Ls < Le {
        for _ in Ls ... Le {
            temp.append(unsortedIntegers[Ls])
        }
    }
    while Rs < Re {
        for _ in Rs ... Re {
            temp.append(unsortedIntegers[Rs])
        }
    }
    
}



 */

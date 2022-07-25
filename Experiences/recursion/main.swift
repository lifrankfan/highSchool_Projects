//ben's code
// use (_ n:Int) so dont have to use (n:x) when calling

func f(_ n:Int) -> Int {
    if n > 1 {
        return n + f(n-1)
    } else {
        return 1
    }
}

print(f(5))


/*

 //my code
 
var x = 0

func addOne(times:Int) {
    for n in 1 ... times {
        x = n + x
        print(x)
    }
}

addOne(times:5)

 
 */

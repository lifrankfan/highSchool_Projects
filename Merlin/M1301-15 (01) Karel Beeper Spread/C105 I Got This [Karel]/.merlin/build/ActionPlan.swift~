import MerlinKarel

class ActionPlan: KarelExecutor {
    var totalBeeps = 0
    
    // Declare functions here:
    func turnRight() {
        for _ in 1 ... 3 {
            turnLeft()
        }
    }

    func moveUntilBlock() {
        while isFrontClear() == true {
            move()
        }
    }

    func turnAround() {
        for _ in 1 ... 2 {
            turnLeft()
        }
    }
    func pickUpAndDrop() {
        while isBeeperHere() == true {
            pickUpBeeper()
            totalBeeps += 1
        }
        while anyBeepersInBag() == true {
        move()
        putDownBeeper()
        }
    }
    
    override func run() {

        
        // Insert your code here:
        turnRight()
        while isBeeperHere() != true {
            move()
        }
        pickUpAndDrop()
        turnAround()
        for _ in 1 ... totalBeeps {
            move()
        }
        turnRight()
        move()
        turnRight()
        pickUpAndDrop()
        moveUntilBlock()
        turnLeft()
        move()
    }
    
}

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
        turnAround()
        for _ in 1 ... totalBeeps {
            move()            
        }
        totalBeeps = 0
    }
    
    override func run() {

        
        // Insert your code here:
        turnRight()
        while isBeeperHere() != true {
            move()
        }

        while isBeeperHere() == true {
            pickUpAndDrop()
            turnRight()
            move()
            turnRight()
        }
        moveUntilBlock()
        turnLeft()
    }
    
}

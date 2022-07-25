import MerlinKarel

class ActionPlan: KarelExecutor {

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
    
    override func run() {

        // Insert your code here:
        turnRight()
        while isBeeperHere() != true {
            move()
        }
        while isBeeperHere() == true {
            pickUpBeeper()
        }
        while anyBeepersInBag() == true {
        move()
        putDownBeeper()
        }
        moveUntilBlock()
        turnLeft()
        move()
    }
    
}

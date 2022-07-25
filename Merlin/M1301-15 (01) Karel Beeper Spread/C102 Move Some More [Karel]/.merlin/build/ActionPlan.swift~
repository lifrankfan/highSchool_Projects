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
        pickUpBeeper()
        move()
        putDownBeeper()
        moveUntilBlock()
        turnLeft()
        move()
    }
    
}

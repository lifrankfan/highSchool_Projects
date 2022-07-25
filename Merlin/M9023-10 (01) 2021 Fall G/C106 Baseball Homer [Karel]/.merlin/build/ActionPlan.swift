import MerlinKarel

class ActionPlan: KarelExecutor {

    // Declare functions here:

    func turnRight() {
        
    turnLeft()
    turnLeft()
    turnLeft()
}

    func cMove() {
        while isFrontClear() == true {
            move()
        }
    }

    func moveBeep() {
        while isBeeperHere() == false {
            move()
        }
        pickUpBeeper()
    }
    override func run() {

        // Insert your code here:

        cMove()
        turnLeft()
        moveBeep()
        cMove()
        turnLeft()
        moveBeep()
        cMove()
        turnLeft()
        moveBeep()
        cMove()
        turnLeft()
        while isBeeperHere() == false {
            move()
        }
        while anyBeepersInBag() == true {
            
            putDownBeeper()
        }
        move()
    }
    
}

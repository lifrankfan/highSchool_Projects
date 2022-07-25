import MerlinKarel

class ActionPlan: KarelExecutor {

    // Declare functions here:

    override func run() {

        func turnRight() {
            turnLeft()
            turnLeft()
            turnLeft()
        }

        func moveFor() {
        while isFrontClear() {
            move()
        }
        }
        // Insert your code here:
        turnRight()
        move()
        pickUpBeeper()

        moveFor()
        turnRight()

        moveFor()
        turnRight()

        moveFor()

        turnRight()

        move()
        move()
        turnLeft()
        move()
        turnLeft()
        move()
        move()
        putDownBeeper()
        turnLeft()
        turnLeft()
        move()
        turnLeft()
        turnLeft()
        
    }
    
}

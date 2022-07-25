import MerlinKarel

class ActionPlan: KarelExecutor {

    // Declare functions here:
    func tRight() {
    turnLeft()
    turnLeft()
    turnLeft()
    }
    func A() {
        turnLeft()
        turnLeft()
    }

    
    override func run() {

        // Insert your code here:
        tRight()
        move()
        tRight()
        while isFrontClear() {
            if isBeeperHere() {
                pickUpBeeper()
            } else {
                move()
            }
        }
        A()
        move()
        move()
        turnLeft()
        while isFrontClear() {
            move()
        }

        turnLeft()
        move()
        move()
        turnLeft()


        while isFrontClear() {
            move()
        }
        turnLeft()
        move()
        move()
        tRight()
        move()
        tRight()
        move()
        move()
        putDownBeeper()
        A()
        move()
        A()
        
    }
    
    
}

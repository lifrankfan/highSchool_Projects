import MerlinKarel

class ActionPlan: KarelExecutor {

    // Declare functions here:

    func r() {
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
        r()
        move()
        pickUpBeeper()
        while isFrontClear(){
            move()
        }
        r()
        while isGoalLocation() == false {
            if isRightClear() {
                r()
                move()
            } else if isFrontClear() {
                move()
            }else if isLeftClear() {
                turnLeft()
                move()

            } else {
                turnLeft()
                turnLeft()
                move()
            }
        
        
        }

        if isGoalLocation () {
            if isFacingNorth() {
                move()
                putDownBeeper()
                A()
                move()
                A()
                
            }else if isFacingSouth() {
                A()
                move()
                putDownBeeper()
                A()
                move()
                A()
            } else if isFacingEast() {
                turnLeft()
                move()
                putDownBeeper()
                A()
                move()
                A()
            }
            else if isFacingWest() {
                r()
                move()
                putDownBeeper()
                A()
                move()
                A()
            }
            }
            
    }
    
}

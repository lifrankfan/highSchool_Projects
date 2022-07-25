import MerlinKarel

class ActionPlan: KarelExecutor {

    // Declare functions here:
    func turnRight() {
        for _ in 1 ... 3 {
            turnLeft()
        }
    }

    func turnAround() {
        for _ in 1 ... 2{
            turnLeft()
        }
    }

    func forwardTillBlock() {
        while isFrontClear() == true {
            move()
        }
    }

    func checkLeft() {
        if isLeftClear() {
            turnLeft()
        }
    }
    
    func checkRight() {
        if isRightClear() {
            turnRight()
        }
    }

    func checkLeftAndRight() {
        checkLeft()
        checkRight()
    }
    
        
    override func run() {

        // Insert your code here:
        turnLeft()
        while isGoalLocation() != true {
            if isFacingNorth() == true {
                checkLeftAndRight()
            }
            if isFacingSouth() == true {
                checkLeftAndRight()
            }
            if isFacingEast() == true {
                checkRight()
            }
            if isFacingWest() == true {
                checkLeft()
            }
            if isFrontClear() != true {
                turnAround()
            }
            move()
        }
        turnRight()
    }
}

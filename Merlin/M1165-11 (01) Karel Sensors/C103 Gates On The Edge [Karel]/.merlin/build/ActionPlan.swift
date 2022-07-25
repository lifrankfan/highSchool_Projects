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

    func checkLeftAndRight() {
        if isLeftClear() {
            turnLeft()
        }
        else if isRightClear() {
            turnRight()
        }
    }
        
    override func run() {

        // Insert your code here:
        while isGoalLocation() != true {
        forwardTillBlock()
        checkLeftAndRight()
        }
        turnRight()
    }
}

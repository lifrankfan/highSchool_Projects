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

    func front() {
        
        while isFrontClear() == true {
            while isBeeperHere() {
                move()
            }
            if isFacingEast() {
                turnLeft()
                move()
                turnLeft()
            }
            if isFacingWest() {
                r()
                move()
                r()
            }
        }
    }
    
    
    override func run() {

        // Insert your code here:
        turnLeft()
        while isGoalLocation == false {
            front()            
        }
    }
    
}

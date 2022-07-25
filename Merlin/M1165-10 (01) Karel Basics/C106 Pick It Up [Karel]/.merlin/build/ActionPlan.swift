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
    override func run() {

        // Insert your code here:
        move()
        pickUpBeeper()
        move()
    }
    
}

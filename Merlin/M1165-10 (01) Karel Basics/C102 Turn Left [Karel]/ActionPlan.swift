import MerlinKarel

class ActionPlan: KarelExecutor {

    // Declare functions here:
    func turnRight() {
        for _  in 1...3 {
            turnLeft()
        }
    }
    
    override func run() {

        // Insert your code here:

        turnRight()
        
    }
    
}

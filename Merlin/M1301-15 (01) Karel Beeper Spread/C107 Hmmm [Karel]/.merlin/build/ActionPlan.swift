import MerlinKarel

class ActionPlan: KarelExecutor {
    var totalBeeps = 0
    var wall = 0
    
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

    func turnAround() {
        for _ in 1 ... 2 {
            turnLeft()
        }
    }
    func pickUp() {
        while isBeeperHere() == true {
            pickUpBeeper()
            totalBeeps += 1
        }
    }

    func drop() {
        while anyBeepersInBag() == true {
            putDownBeeper()
            move()
        }
        turnAround()
        for _ in 1 ... totalBeeps {
            move()            
        }
        totalBeeps = 0
        turnRight()
    }

    func scaleWall() {
        while isRightClear() == false {
            move()
            wall += 1
        }        
        turnRight()
        move()
        turnRight()
        for _ in 1 ... wall {
            move()
        }        
        turnLeft()
        wall -= 1
    }

    func scaleBack() {
        while isLeftClear() == false {
            move()
        }
        turnLeft()
        move()
        turnLeft()
        for _ in 1 ... wall {
            move()
        }
        turnAround()
        wall = 0
    }
    
    override func run() {
        
        // Insert your code here:
        turnRight()
        while isBeeperHere() != true {
            move()
        }

        pickUp()
        turnLeft()
        
        scaleWall()
        while wall != 0 {
            drop()
            scaleBack()
            pickUp()
            scaleWall()
        }
        drop()
        move()
        turnRight()
        moveUntilBlock()
        turnLeft()
    }    
}

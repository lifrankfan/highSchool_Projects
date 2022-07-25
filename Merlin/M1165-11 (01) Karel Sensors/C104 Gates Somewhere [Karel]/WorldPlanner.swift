import MerlinKarel 

class WorldPlanner: WorldPlan {
    let squareSize = Int.random(in: 3 ... 7) * 2 + 1
    
    override func avenueCount() -> Int {
        return squareSize
    }

    override func streetCount() -> Int {
        return squareSize
    }

    override func wallLocations() -> WallLocations {
        var wallLocations = WallLocations()
        for street in 1 ... squareSize - 2 {
            let leftAvenue = 1
            let rightAvenue = squareSize - 2
            let gateAvenue = Int.random(in: leftAvenue ... rightAvenue)
            let left  = GridLocation(avenue: leftAvenue, street: street)
            let gateLeft = GridLocation(avenue: gateAvenue - 1, street: street)
            let gateRight = GridLocation(avenue: gateAvenue + 1, street: street)
            let right = GridLocation(avenue: rightAvenue, street: street)

            if gateAvenue > leftAvenue {
                addWallSegment(wallLocations: &wallLocations, from: left, through: gateLeft)
            }
            if gateAvenue < rightAvenue {
                addWallSegment(wallLocations: &wallLocations, from: gateRight, through: right)
            }
        }
        
        return wallLocations
    }

    override func initialSituation() -> Situation {
        let gridLocationBeeperCounts : Situation.GridLocationBeeperCounts  = [ : ]

        let situation = Situation(
          karelGridLocation: GridLocation(avenue: squareSize - 2, street: squareSize - 2),
          karelCompassDirection: .north,
          karelBeeperCount: 0,
          gridLocationBeeperCounts: gridLocationBeeperCounts
        )
        return situation
    }

    override func goalSituation() -> Situation {
        let gridLocationBeeperCounts : Situation.GridLocationBeeperCounts  = [ : ]

        let situation = Situation(
          karelGridLocation: GridLocation(avenue: 1, street: 1),
          karelCompassDirection: .north,
          karelBeeperCount: 0,
          gridLocationBeeperCounts: gridLocationBeeperCounts
        )
        return situation
    }

}

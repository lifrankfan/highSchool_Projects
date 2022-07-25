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
            let isGateLocationOnLeft =  street % 2 == 0
            let leftAvenue = isGateLocationOnLeft ? 2 : 1
            let rightAvenue = isGateLocationOnLeft ? squareSize - 2 : squareSize - 3
            let left  = GridLocation(avenue: leftAvenue, street: street)
            let right = GridLocation(avenue: rightAvenue, street: street)
            addWallSegment(wallLocations: &wallLocations, from: left, through: right)
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

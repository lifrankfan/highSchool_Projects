import MerlinKarel 

class WorldPlanner: WorldPlan {
    let squareSize = Int.random(in: 10 ... 25)
    
    override func avenueCount() -> Int {
        return squareSize
    }

    override func streetCount() -> Int {
        return squareSize
    }

    override func wallLocations() -> WallLocations {
        var wallLocations = WallLocations()
        var hurdleAvenue = 2
        while hurdleAvenue < squareSize - 2 {
            let bottom = GridLocation(avenue: hurdleAvenue, street: 1)
            let top = GridLocation(avenue: hurdleAvenue, street: bottom.street + Int.random(in: 1 ... squareSize / 3))
            addWallSegment(wallLocations: &wallLocations, from: bottom, through: top)

            hurdleAvenue += Int.random(in: 2 ... 4)
        }
        
        return wallLocations
    }

    override func initialSituation() -> Situation {
        let gridLocationBeeperCounts : Situation.GridLocationBeeperCounts  = [ : ]

        let situation = Situation(
          karelGridLocation: GridLocation(avenue: squareSize - 2, street: 1),
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

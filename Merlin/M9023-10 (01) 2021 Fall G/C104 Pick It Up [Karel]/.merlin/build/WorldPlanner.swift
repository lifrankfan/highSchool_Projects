import MerlinKarel

class WorldPlanner: WorldPlan {
    override func avenueCount() -> Int {
        return 8
    }

    override func streetCount() -> Int {
        return 8
    }

    override func wallLocations() -> WallLocations {
        let wallLocations = WallLocations()
        return wallLocations
    }

    override func initialSituation() -> Situation {
        let gridLocationBeeperCounts : Situation.GridLocationBeeperCounts  = [
          GridLocation(avenue: 3, street: 4) : 1
        ]

        let situation = Situation(
          karelGridLocation: GridLocation(avenue: 3, street: 3),
          karelCompassDirection: .north,
          karelBeeperCount: 0,
          gridLocationBeeperCounts: gridLocationBeeperCounts
        )
        return situation
    }

    override func goalSituation() -> Situation {
        let gridLocationBeeperCounts : Situation.GridLocationBeeperCounts  = [:]

        let situation = Situation(
          karelGridLocation: GridLocation(avenue: 3, street: 5),
          karelCompassDirection: .north,
          karelBeeperCount: 1,
          gridLocationBeeperCounts: gridLocationBeeperCounts
        )
        return situation
    }

}

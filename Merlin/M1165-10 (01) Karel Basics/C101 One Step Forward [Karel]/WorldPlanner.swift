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
        let gridLocationBeeperCounts : Situation.GridLocationBeeperCounts  = [:]

        let situation = Situation(
          karelGridLocation: GridLocation(avenue: 1, street: 1),
          karelCompassDirection: .north,
          karelBeeperCount: 0,
          gridLocationBeeperCounts: gridLocationBeeperCounts
        )
        return situation
    }

    override func goalSituation() -> Situation {
        let gridLocationBeeperCounts : Situation.GridLocationBeeperCounts  = [:]

        let situation = Situation(
          karelGridLocation: GridLocation(avenue: 1, street: 2),
          karelCompassDirection: .north,
          karelBeeperCount: 0,
          gridLocationBeeperCounts: gridLocationBeeperCounts
        )
        return situation
    }

}

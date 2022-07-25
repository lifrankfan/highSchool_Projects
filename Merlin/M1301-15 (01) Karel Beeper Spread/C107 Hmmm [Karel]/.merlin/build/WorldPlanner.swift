import MerlinKarel

class WorldPlanner: WorldPlan {
    static let maxBeepersPerRow = 7
    static let maxBeeperRows = 9
    static let leftMargin = 5
    static let topMargin = 3
    static let shouldIncludeWall = true
    
    let avenues = 1 + leftMargin + 1 + maxBeepersPerRow + 1 + Int.random(in: 0 ... 5)
    let streets = 1 + topMargin + 1 + maxBeeperRows + 1 + Int.random(in: 0 ... 5)
    let beeperAvenue = leftMargin + 1
    let wallAvenue = leftMargin + 1
    let beeperSpreadAvenue = leftMargin + 2
    let beeperRows = maxBeeperRows
    let beeperCountPerRow : [Int] // indexed by street - 1

    required init() {
        var beeperCountPerRow = [Int](repeating: 0, count: beeperRows)
        for row in 0 ..< beeperRows {
            beeperCountPerRow[row] = Int.random(in: 1 ... Self.maxBeepersPerRow)
        }
        self.beeperCountPerRow = beeperCountPerRow
    }
    
    override func avenueCount() -> Int {
        return avenues
    }

    override func streetCount() -> Int {
        return streets
    }

    override func wallLocations() -> WallLocations {
        var wallLocations = WallLocations()
        if Self.shouldIncludeWall {
            self.addWallSegment(wallLocations: &wallLocations,
                                from: GridLocation(avenue: wallAvenue, street: 1),
                                through: GridLocation(avenue: wallAvenue, street: beeperRows))
        }
        return wallLocations
    }

    override func initialSituation() -> Situation {
        var gridLocationBeeperCounts = Situation.GridLocationBeeperCounts()
        for row in 0 ..< beeperRows {
            let street = row + 1
            gridLocationBeeperCounts[GridLocation(avenue: beeperAvenue, street: street)] = beeperCountPerRow[row]
        }

        let situation = Situation(
          karelGridLocation: GridLocation(avenue: 1, street: 1),
          karelCompassDirection: .north,
          karelBeeperCount: 0,
          gridLocationBeeperCounts: gridLocationBeeperCounts
        )
        return situation
    }

    override func goalSituation() -> Situation {
        var gridLocationBeeperCounts = Situation.GridLocationBeeperCounts()
        for row in 0 ..< beeperRows {
            for column in 0 ..< beeperCountPerRow[row] {
                let avenue = beeperSpreadAvenue + column
                let street = row + 1
                gridLocationBeeperCounts[GridLocation(avenue: avenue, street: street)] = 1
            }
        }

        let situation = Situation(
          karelGridLocation: GridLocation(avenue: avenues - 2, street: beeperRows + 1),
          karelCompassDirection: .north,
          karelBeeperCount: 0,
          gridLocationBeeperCounts: gridLocationBeeperCounts
        )
        return situation
    }

}

import MerlinKarel

class WorldPlanner: WorldPlan {
    static let fieldWidth = 10 ... 12
    static let fieldHeight = 14 ... 20

    let avenues = Int.random(in: fieldWidth)
    let streets = Int.random(in: fieldHeight)
    let initialAvenue: Int
    let initialStreet: Int

    let finalAvenue: Int
    let finalStreet: Int

    required init() {
        initialAvenue = Int.random(in: 2 ..< avenues - 1)
        initialStreet = 1
        
        finalAvenue = avenues / 2
        finalStreet = streets - 3
    }
    
    override func avenueCount() -> Int {
        return avenues
    }

    override func streetCount() -> Int {
        return streets
    }

    func randomPlayers(count: Int, avenueRange: ClosedRange<Int>, streetRange: ClosedRange<Int>) -> [WallLocation] {
        var gridLocations = [GridLocation]()

        while gridLocations.count < count {
            var potentialGridLocation: GridLocation
            repeat {
                potentialGridLocation = GridLocation(avenue: Int.random(in: avenueRange), street: Int.random(in: streetRange))
            } while gridLocations.contains {$0.avenue == potentialGridLocation.avenue && $0.street == potentialGridLocation.street}

            gridLocations.append(potentialGridLocation)
        }

        let wallLocations = gridLocations.map { WallLocation(gridLocation: $0, side: .above) }
        return wallLocations
    }

    override func wallLocations() -> WallLocations {
        var wallLocations = WallLocations()
        // Goal
        wallLocations.addWall(at: WallLocation(gridLocation: GridLocation(avenue: finalAvenue, street: finalStreet + 1), side: .above))
        wallLocations.addWall(at: WallLocation(gridLocation: GridLocation(avenue: finalAvenue, street: finalStreet + 1), side: .right))
        wallLocations.addWall(at: WallLocation(gridLocation: GridLocation(avenue: finalAvenue - 1, street: finalStreet + 1), side: .right))
        
        // Walls representing players
        let playerWalls = randomPlayers(count: 5, avenueRange: 1 ... avenues - 2, streetRange: 2 ... streets - 4)
        for playerWall in playerWalls {
            wallLocations.addWall(at: playerWall)
        }
        
        return wallLocations
    }

    override func initialSituation() -> Situation {
        var gridLocationBeeperCounts = Situation.GridLocationBeeperCounts()
        var gridLocation = GridLocation(avenue: initialAvenue - 1, street: initialStreet + Int.random(in: 1 ... 3))
        gridLocationBeeperCounts[gridLocation] = 1

        gridLocation = GridLocation(avenue: Int.random(in: 1 ... avenues - 2), street: gridLocation.street + Int.random(in: 1 ... 3))
        gridLocationBeeperCounts[gridLocation] = 1
        
        gridLocation = GridLocation(avenue: Int.random(in: 1 ... avenues - 2), street: gridLocation.street + Int.random(in: 1 ... 3))
        gridLocationBeeperCounts[gridLocation] = 1
        
        let situation = Situation(
          karelGridLocation: GridLocation(avenue: initialAvenue, street: initialStreet),
          karelCompassDirection: .south,
          karelBeeperCount: 0,
          gridLocationBeeperCounts: gridLocationBeeperCounts
        )
        return situation
    }

    override func goalSituation() -> Situation {
        var gridLocationBeeperCounts = Situation.GridLocationBeeperCounts()
        gridLocationBeeperCounts[GridLocation(avenue: finalAvenue, street: finalStreet + 1)] = 3

        let situation = Situation(
          karelGridLocation: GridLocation(avenue: finalAvenue, street: finalStreet),
          karelCompassDirection: .north,
          karelBeeperCount: 0,
          gridLocationBeeperCounts: gridLocationBeeperCounts
        )
        return situation
    }

}

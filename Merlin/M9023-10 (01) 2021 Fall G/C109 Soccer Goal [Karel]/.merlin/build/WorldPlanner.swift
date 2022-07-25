import MerlinKarel

class WorldPlanner: WorldPlan {
    static let fieldWidth = 8 ... 16
    static let fieldHeight = 16 ... 20

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

    override func wallLocations() -> WallLocations {
        var wallLocations = WallLocations()
        wallLocations.addWall(at: WallLocation(gridLocation: GridLocation(avenue: finalAvenue, street: finalStreet + 1), side: .above))
        wallLocations.addWall(at: WallLocation(gridLocation: GridLocation(avenue: finalAvenue, street: finalStreet + 1), side: .right))
        wallLocations.addWall(at: WallLocation(gridLocation: GridLocation(avenue: finalAvenue - 1, street: finalStreet + 1), side: .right))
        return wallLocations
    }

    override func initialSituation() -> Situation {
        var gridLocationBeeperCounts = Situation.GridLocationBeeperCounts()
        gridLocationBeeperCounts[GridLocation(avenue: initialAvenue - 1, street: initialStreet)] = 1

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
        gridLocationBeeperCounts[GridLocation(avenue: finalAvenue, street: finalStreet + 1)] = 1

        let situation = Situation(
          karelGridLocation: GridLocation(avenue: finalAvenue, street: finalStreet),
          karelCompassDirection: .north,
          karelBeeperCount: 0,
          gridLocationBeeperCounts: gridLocationBeeperCounts
        )
        return situation
    }

}

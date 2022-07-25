import MerlinKarel

class WorldPlanner: WorldPlan {

    private let initialAvenueCount = Int.random(in:  12 ... 18)
    private let initialStreetCount = Int.random(in:  12 ... 18)
    private let a = Int.random(in: 1 ... 25)
    private let b = Int.random(in: 1 ... 25)
    private let c = Int.random(in: 1 ... 25)
    private let d = Int.random(in: 1 ... 25)
    private let r = Int.random(in: 1 ... 25)
    private let sum: Int
    private let initialBeeperCount: Int

    private let intraLineDistance = 2
    private let aGridLocation: GridLocation
    private let bGridLocation: GridLocation
    private let cGridLocation: GridLocation
    private let dGridLocation: GridLocation
    private let sumGridLocation: GridLocation
    private let rGridLocation: GridLocation
    
    required init() {
        sum = a + b + c + d
        initialBeeperCount = sum + r

        let centerGridLocation = GridLocation(avenue: initialAvenueCount / 2, street: initialStreetCount / 2)
        aGridLocation   = GridLocation(avenue: centerGridLocation.avenue - 2 * intraLineDistance, street: centerGridLocation.street)
        bGridLocation   = GridLocation(avenue: centerGridLocation.avenue - 1 * intraLineDistance, street: centerGridLocation.street)
        sumGridLocation = GridLocation(avenue: centerGridLocation.avenue + 0 * intraLineDistance, street: centerGridLocation.street)
        cGridLocation   = GridLocation(avenue: centerGridLocation.avenue + 1 * intraLineDistance, street: centerGridLocation.street)
        dGridLocation   = GridLocation(avenue: centerGridLocation.avenue + 2 * intraLineDistance, street: centerGridLocation.street)
        rGridLocation   = GridLocation(avenue: initialAvenueCount - 2, street: initialStreetCount - 2)
        
    }
    
    override func avenueCount() -> Int {
        return initialAvenueCount
    }

    override func streetCount() -> Int {
        return initialStreetCount
    }

    override func wallLocations() -> WallLocations {
        let wallLocations = WallLocations()
        return wallLocations
    }

    override func initialSituation() -> Situation {
        var gridLocationBeeperCounts : Situation.GridLocationBeeperCounts  = [
          aGridLocation: a,
          bGridLocation: b,
          sumGridLocation: sum,
          cGridLocation: c,
          dGridLocation: d
        ]
        let randomGridLocation = gridLocationBeeperCounts.randomElement()!
        gridLocationBeeperCounts.removeValue(forKey: randomGridLocation.key)

        let situation = Situation(
          karelGridLocation: GridLocation(avenue: Int.random(in: 1 ... initialAvenueCount - 2),
                                          street: Int.random(in: 1 ... initialStreetCount - 2)),
          karelCompassDirection: [CompassDirection.north, CompassDirection.east, CompassDirection.south, CompassDirection.west].randomElement()!,
          karelBeeperCount: initialBeeperCount,
          gridLocationBeeperCounts: gridLocationBeeperCounts
        )
        return situation
    }

    override func goalSituation() -> Situation {
        let gridLocationBeeperCounts : Situation.GridLocationBeeperCounts  = [
          aGridLocation: a,
          bGridLocation: b,
          sumGridLocation: sum,
          cGridLocation: c,
          dGridLocation: d,
          rGridLocation: r
        ]
        
        let situation = Situation(
          karelGridLocation: GridLocation(avenue: 1, street: 1),
          karelCompassDirection: .north,
          karelBeeperCount: 0,
          gridLocationBeeperCounts: gridLocationBeeperCounts
        )
        return situation
    }

}

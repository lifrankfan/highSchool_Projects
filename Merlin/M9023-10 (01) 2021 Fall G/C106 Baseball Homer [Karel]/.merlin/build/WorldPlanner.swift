import MerlinKarel

class WorldPlanner: WorldPlan {
    static let fieldWidth = 10 ... 16
    static let fieldHeight = 10 ... 16

    let avenues = Int.random(in: fieldWidth)
    let streets = Int.random(in: fieldHeight)
    
    let firstBaseLocation, secondBaseLocation, thirdBaseLocation, homeBaseLocation: GridLocation
    let karelLocation: GridLocation

    required init() {
        let centerLocation = GridLocation(avenue: avenues / 2, street: streets / 2)
        firstBaseLocation = GridLocation(avenue: avenues - 2, street: centerLocation.street)
        secondBaseLocation = GridLocation(avenue: centerLocation.avenue, street: streets - 2)
        thirdBaseLocation = GridLocation(avenue: 1, street: centerLocation.street)
        homeBaseLocation = GridLocation(avenue: centerLocation.avenue, street: 1)

        karelLocation = GridLocation(avenue: homeBaseLocation.avenue + 1, street: homeBaseLocation.street)
    }
    
    override func avenueCount() -> Int {
        return avenues
    }

    override func streetCount() -> Int {
        return streets
    }

    override func wallLocations() -> WallLocations {
        return WallLocations()
    }

    override func initialSituation() -> Situation {
        var gridLocationBeeperCounts = Situation.GridLocationBeeperCounts()
        gridLocationBeeperCounts[firstBaseLocation] = 1
        gridLocationBeeperCounts[secondBaseLocation] = 1
        gridLocationBeeperCounts[thirdBaseLocation] = 1
        gridLocationBeeperCounts[homeBaseLocation] = 1
        
        
        let situation = Situation(
          karelGridLocation: karelLocation,
          karelCompassDirection: .east,
          karelBeeperCount: 0,
          gridLocationBeeperCounts: gridLocationBeeperCounts
        )
        return situation
    }

    override func goalSituation() -> Situation {
        var gridLocationBeeperCounts = Situation.GridLocationBeeperCounts()
        gridLocationBeeperCounts[homeBaseLocation] = 4

        let situation = Situation(
          karelGridLocation: karelLocation,
          karelCompassDirection: .east,
          karelBeeperCount: 0,
          gridLocationBeeperCounts: gridLocationBeeperCounts
        )
        return situation
    }

}

class VideoGame {
    let name : String

    init(name: String) {
        self.name = name
    }
}

class StrategyGame: VideoGame {
    let puzzleCount: Int

    init(name: String, puzzleCount: Int) {
        self.puzzleCount = puzzleCount

        super.init(name: name)
    }
}

let videoGame = VideoGame(name: "Fortnite")
let strategyGame = StrategyGame(name: "Minecraft", puzzleCount: 69)

print(strategyGame.name)
print(strategyGame.puzzleCount)
print(videoGame.name)

let games = [videoGame, strategyGame]

for game in games {
    var description = game.name
    if let game = game as? StrategyGame {                   
        description += " is a strategy game: \(game.puzzleCount)"
    }
    print(description)
}
        

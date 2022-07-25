class block {
    private var height : Int
    private var width : Int

    init(h: Int, w: Int) {
        self.height = h
        self.width = w
    }
    func getHeight() -> Int {
        return self.height
    }
    private func changeHeight() {
        self.height = 30        
    }

    func calculate () {
        changeHeight()
    }
}

let b = block(h:20,w:20)

// change height can only be accessed in class
print(b.getHeight())
print(b.calculate())
print(b.getHeight())

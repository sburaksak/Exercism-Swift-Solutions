//Solution goes in Sources

struct Robot {
    static var robotNames: [String] = []
    private let letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var name: String!
    
    init() {
        setRandomName()
    }
    
    mutating func resetName() {
        setRandomName()
    }
    
    private mutating func setRandomName() {
        var name = generateRandomName()
        while Robot.robotNames.contains(name) {
            name = generateRandomName()
        }
        
        self.name = name
        Robot.robotNames.append(name)
    }
    
    private func generateRandomName() -> String {
        let firstLetter = letters[generateRandomInt(max: letters.count - 1)]
        let seccondLetter = letters[generateRandomInt(max: letters.count - 1)]
        
        let name = "\(firstLetter)\(seccondLetter)\(generateRandomInt(max: 9))\(generateRandomInt(max: 9))\(generateRandomInt(max: 9))"
        
        return name
    }
    
    private func generateRandomInt(max: Int) -> Int {
        Int.random(in: 0..<max+1)
    }
}

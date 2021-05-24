//Solution goes in Sources

class SimulatedRobot {
    enum Direction {
        case east
        case north
        case south
        case west
    }
    
    enum Instruction {
        case turnRight
        case turnLeft
        case advance
    }
    
    var currentOrient: Direction?
    var coordinates: [Int] = Array(repeating: 0, count: 2)
    var bearing: Direction? {
        currentOrient
    }
    
    func orient(_ direction: Direction) {
        currentOrient = direction
    }
    
    func turnRight() {
        switch currentOrient {
        case .east:
            currentOrient = .south
        case .west:
            currentOrient = .north
        case .north:
            currentOrient = .east
        case .south:
            currentOrient = .west
        default:
            currentOrient = .south
        }
    }
    
    func turnLeft() {
        switch currentOrient {
        case .east:
            currentOrient = .north
        case .west:
            currentOrient = .south
        case .north:
            currentOrient = .west
        case .south:
            currentOrient = .east
        default:
            currentOrient = .south
        }
    }
    
    func at(x: Int, y: Int) {
        coordinates[0] = x
        coordinates[1] = y
    }
    
    func advance() {
        switch currentOrient {
        case .east:
            coordinates[0] = coordinates[0] + 1
        case .west:
            coordinates[0] = coordinates[0] - 1
        case .north:
            coordinates[1] = coordinates[1] + 1
        case .south:
            coordinates[1] = coordinates[1] - 1
        default:
            coordinates[1] = coordinates[1] + 1
        }
    }
    
    func instructions(_ instructions: String) -> [Instruction] {
        var result: [Instruction] = []
        
        for i in instructions {
            switch i {
            case "R":
                result.append(.turnRight)
            case "L":
                result.append(.turnLeft)
            case "A":
                result.append(.advance)
            default:
                print("error")
            }
        }
        
        return result
    }
    
    func place(x: Int, y: Int, direction: Direction) {
        coordinates[0] = x
        coordinates[1] = y
        currentOrient = direction
    }
    
    func evaluate(_ instructions: String) {
        for i in instructions {
            switch i {
            case "R":
                turnRight()
            case "L":
                turnLeft()
            case "A":
                advance()
            default:
                print("error")
            }
        }
    }
}
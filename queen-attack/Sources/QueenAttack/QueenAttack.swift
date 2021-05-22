//Solution goes in Sources

class Queens {
    var white: [Int]
    var black: [Int]
    
    enum InitError: Error {
        case incorrectNumberOfCoordinates
        case sameSpace
        case invalidCoordinates
    }
    
    init()  { 
        white = [0, 3]
        black = [7, 3]
    }
    
    init(white: [Int], black: [Int]) throws { 
        guard white.count == 2, black.count == 2 else {
            throw InitError.incorrectNumberOfCoordinates
        }
        guard white != black else {
            throw InitError.sameSpace
        }
        
        self.white = white
        self.black = black
        
        guard isValidCoordinates(array: white), isValidCoordinates(array: black) else {
            throw InitError.invalidCoordinates
        }
    }
    
    var description: String {
        get {
            var result = ""
            for i in 0...7 {
                for j in 0...7 {
                    if i == white[0] && j == white[1] {
                        result += "W"
                    } else if i == black[0] && j == black[1] {
                        result += "B"
                    } else {
                        result += "_"
                    }
                    
                    if j != 7 {
                        result += " "
                    }
                }
                
                if i != 7 {
                    result += "\n"
                }
            }
            return result
        }
    }
    
    var canAttack: Bool {
        get {
            if white[0] == black[0] {
                return true
            }
            if white[1] == black[1] {
                return true
            }
            if abs(white[0] - black[0]) == abs(white[1] - black[1]) {
                return true
            }
            
            return false
        }
    }
    
    private func isValidCoordinates(array: [Int]) -> Bool {
        var result = true
        array.forEach {
            if !(0...7 ~= $0) {
                result = false
            }
        }
        return result
    }
}
//Solution goes in Sources

enum Plant {
    case radishes
    case clover
    case grass
    case violets
}

class Garden {
    var diagram: String
    var children: [String]? = ["Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry"]
    
    init(_ diagram: String, children: [String]? = nil) {
        self.diagram = diagram
        if children != nil {
            self.children = children
        }
        
        self.children = self.children?.sorted(by: <)
    }
    
    func plantsForChild(_ name: String) -> [Plant] {
        let splittedDiagram = diagram.split(separator: "\n")
        let indexOfName = self.children?.firstIndex(of: name)
        
        let firstIndex = indexOfName! * 2
        var result: [Plant] = []
        for i in splittedDiagram {
            result.append(convertStringToEnum(String(i[indexOfName! * 2])))
            result.append(convertStringToEnum(String(i[indexOfName! * 2 + 1])))
        }
        return result
    }
    
    private func convertStringToEnum(_ string: String) -> Plant {
        switch string {
        case "R":
            return Plant.radishes
        case "C":
            return Plant.clover
        case "G":
            return Plant.grass
        default:
            return Plant.violets
        }
    }
}

extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}

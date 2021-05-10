//Solution goes in Sources

enum Kind: String {
    case errorKind = "ErrorKind"
    case equilateral = "Equilateral"
    case isosceles = "Isosceles"
    case scalene = "Scalene"
}

struct Triangle {
    var x: Double
    var y: Double
    var z: Double
    
    init(_ x: Double, _ y: Double, _ z: Double) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    var kind: String {
        guard x > 0, y > 0, z > 0 else {
            return Kind.errorKind.rawValue
        }
        guard x + y >= z, x + z >= y, y + z >= x else {
            return Kind.errorKind.rawValue
        }  
        
        let set = Set([x,y,z])
        switch set.count {
        case 1:
            return Kind.equilateral.rawValue
        case 2:
            return Kind.isosceles.rawValue
        default:
            return Kind.scalene.rawValue
        }
    }
}

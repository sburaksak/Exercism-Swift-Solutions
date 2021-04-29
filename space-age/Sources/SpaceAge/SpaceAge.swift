//Solution goes in Sources

enum orbitalPeriods: Double {
    case Mercury = 0.2408467
    case Venus = 0.61519726 
    case Mars = 1.8808158
    case Jupiter = 11.862615
    case Saturn = 29.447498
    case Uranus = 84.016846
    case Neptune = 164.79132
}

struct SpaceAge {
    var age: Double
    let earthOrbitalPeriodAsSecond: Double = 31557600
    
    init(_ age: Double) {
        self.age = age
    }
    
    var seconds: Double {
        get {
            return age
        }
    }
    
    var onEarth: Double {
        get {
            return (age / earthOrbitalPeriodAsSecond).roundAtMostTwoDecimal()
        }
    }
    
    var onMercury: Double {
        get {
            return (age / earthOrbitalPeriodAsSecond / orbitalPeriods.Mercury.rawValue).roundAtMostTwoDecimal()
        }
    }
    
    var onVenus: Double {
        get {
            return (age / earthOrbitalPeriodAsSecond / orbitalPeriods.Venus.rawValue).roundAtMostTwoDecimal()
        }
    }
    
    var onMars: Double {
        get {
            return (age / earthOrbitalPeriodAsSecond / orbitalPeriods.Mars.rawValue).roundAtMostTwoDecimal()
        }
    }
    
    var onJupiter: Double {
        get {
            return (age / earthOrbitalPeriodAsSecond / orbitalPeriods.Jupiter.rawValue).roundAtMostTwoDecimal()
        }
    }
    
    var onSaturn: Double {
        get {
            return (age / earthOrbitalPeriodAsSecond / orbitalPeriods.Saturn.rawValue).roundAtMostTwoDecimal()
        }
    }
    
    var onUranus: Double {
        get {
            return (age / earthOrbitalPeriodAsSecond / orbitalPeriods.Uranus.rawValue).roundAtMostTwoDecimal()
        }
    }
    
    var onNeptune: Double {
        get {
            return (age / earthOrbitalPeriodAsSecond / orbitalPeriods.Neptune.rawValue).roundAtMostTwoDecimal()
        }
    }
}

extension Double {
    func roundAtMostTwoDecimal() -> Double {
        return (self * 100).rounded() / 100
    }
}

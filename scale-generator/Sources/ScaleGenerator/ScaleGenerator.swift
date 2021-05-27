//Solution goes in Sources

struct ScaleGenerator { 
    let sharp = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]
    let flat  = ["F", "Gb", "G", "Ab", "A", "Bb", "B", "C", "Db", "D", "Eb", "E"]
    let useSharpCheck = ["G", "D", "A", "E", "B", "F#", "C", "e", "b", "f#", "c#", "g#", "d#", "a"]
    
    let tonic: String
    let pattern: String
    let scale: String
    
    init(tonic: String, 
         scaleName: String, pattern: 
            String = "mmmmmmmmmmmm") {
        self.tonic = tonic
        self.scale = scaleName
        self.pattern = pattern
    }
    
    var name: String {
        return "\(tonic.uppercased()) \(scale)"
    }
    
    func pitches() -> [String] {
        var pitches: [String]
        pitches = useSharpCheck.contains(tonic) ? sharp : flat
        var result: [String] = []
        if var index = pitches.firstIndex(of: normalizedTonic())  { 
            for i in pattern {
                result.append(pitches[index % pitches.count])
                switch i {
                case "m":
                    index += 1
                case "M":
                    index += 2
                default:
                    index += 3
                }
            }
        }
        
        return result
    }
    
    func normalizedTonic() -> String {
        tonic.prefix(1).uppercased() + tonic.dropFirst()
    }
}
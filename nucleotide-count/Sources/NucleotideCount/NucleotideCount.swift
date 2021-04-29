//Solution goes in Sources

enum Nucleotides: String {
    case adenine = "A"
    case thymine = "T"
    case guanine = "G"
    case cytosine = "C"
}

struct DNA {
    var strand: String
    init?(strand: String) {
        for i in strand {
            var iAsString = String(i)
            if iAsString != Nucleotides.adenine.rawValue && 
                iAsString != Nucleotides.thymine.rawValue && 
                iAsString != Nucleotides.guanine.rawValue && 
                iAsString != Nucleotides.cytosine.rawValue {
                return nil
            }
        }
        
        self.strand = strand
    }
    
    func count(_ char: String) -> Int{
        return strand.count(char)
    }
    
    func counts() -> [String: Int] {
        var result: [String : Int] =  [
            Nucleotides.adenine.rawValue: 0, 
            Nucleotides.thymine.rawValue: 0, 
            Nucleotides.guanine.rawValue : 0, 
            Nucleotides.cytosine.rawValue: 0
        ]
        
        strand.forEach {
            let oldValue = result[String($0)]!
            result[String($0)] = oldValue + 1
        }
        
        return result
    }
    
}

extension String {
    func count(_ char: String) -> Int {
        var result = 0
        for i in self {
            if String(i) == char {
                result += 1
            }
        }
        
        return result
    }
}
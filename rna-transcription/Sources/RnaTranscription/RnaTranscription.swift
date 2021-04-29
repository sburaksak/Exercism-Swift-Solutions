//Solution goes in Sources

class Nucleotide {

    var nucleotide: String
    
    init (_ nucleotide: String){
        self.nucleotide = nucleotide
    }
    
    
    func convertNucleotide(_ nucleotide: Character) throws -> String {
        switch nucleotide {
        case "C":
            return "G"
        case "G":
            return "C"
        case "T":
            return "A"
        case "A":
            return "U"
        default:
            throw TranscriptionError.invalidNucleotide(message: "\(nucleotide) is not a valid Nucleotide")
        }
    }
    
    
    func complementOfDNA() throws -> String {
        var result: String = ""
        for i in self.nucleotide {
            result += try convertNucleotide(i)
        }
        
        return result
    }
    
}

enum TranscriptionError: Error {
    case invalidNucleotide(message: String)
}
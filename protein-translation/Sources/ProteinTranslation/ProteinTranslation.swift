//Solution goes in Sources

class ProteinTranslation {
    enum Protein: String {
        case Methionine
        case Phenylalanine
        case Leucine
        case Serine
        case Tyrosine
        case Cysteine
        case Tryptophan
        case STOP
    }
    
    enum ProteinTranslationError: Error {
        case error
    }
    
    static func translationOfRNA(_ string: String) throws -> [String] {
        guard string.count % 3 == 0 else { throw ProteinTranslationError.error }
        var count = 0
        
        var result: [String] = []
        
        while count < string.count {
            let codon = "\(string[String.Index(encodedOffset: count)])\(string[String.Index(encodedOffset: count + 1)])\(string[String.Index(encodedOffset: count + 2)])" 
            guard let protein = convertToProtein(codon) else { 
                throw ProteinTranslationError.error 
            }
            if protein == Protein.STOP {
                break
            }
            result.append(protein.rawValue)
            count += 3
        }
        
        return result
    }
    
    static func translationOfCodon(_ string: String) throws -> String {
        guard string.count == 3 else { throw ProteinTranslationError.error }
        guard let protein = convertToProtein(string) else { 
            throw ProteinTranslationError.error 
        }
        return protein.rawValue
    }
    
    private static func convertToProtein(_ string: String) -> Protein? {
        switch string {
        case "AUG":
            return Protein.Methionine
        case "UUU", "UUC":
            return Protein.Phenylalanine
        case "UUA", "UUG":
            return Protein.Leucine
        case "UCU", "UCC", "UCA", "UCG":
            return Protein.Serine
        case "UAU", "UAC":
            return Protein.Tyrosine
        case "UGU", "UGC":
            return Protein.Cysteine
        case "UGG":
            return Protein.Tryptophan
        case "UAA", "UAG", "UGA":
            return Protein.STOP
        default:
            return nil
        }
    }
}
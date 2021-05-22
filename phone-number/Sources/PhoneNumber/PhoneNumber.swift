//Solution goes in Sources
import Foundation

struct PhoneNumber: CustomStringConvertible {
    var startingNumber: String
    
    init(_ startingNumber: String) {
        self.startingNumber = startingNumber
    }
    
    var description: String {
        "(\(areaCode)) \(number.substring(from: 3, to: 6))-\(number.suffix(4))"
    }
    
    var number: String {
        var result = startingNumber
        result = result.removeCharacter(char: "(")
        result = result.removeCharacter(char: ")")
        result = result.removeCharacter(char: " ")
        result = result.removeCharacter(char: "-")
        result = result.removeCharacter(char: ".")
        result = result.removeCharacter(char: ")")
        
        if result.count == 11 {
            if result[result.startIndex] != "1" {
                return "0000000000"
            }
            result.remove(at: result.startIndex)
        }
        
        if result.count < 10 {
            return "0000000000"
        }
        
        return result
    }
    
    var areaCode: String {
        let startIndex = number.count == 11 ? 1 : 0
        return number.substring(from: startIndex, to: startIndex + 3)
    }
}

extension String {
    func removeCharacter(char: String) -> String {
        replacingOccurrences(of: char, with: "", options: NSString.CompareOptions.literal, range: nil)
    }
    
    func substring(from: Int, to: Int) -> String {
        let start = index(self.startIndex, offsetBy: from)
        let end = index(self.startIndex, offsetBy: to)
        return String(self[start..<end])
    }
}

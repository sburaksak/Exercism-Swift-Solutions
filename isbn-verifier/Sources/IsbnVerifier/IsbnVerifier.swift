//Solution goes in Sources

import Foundation

class IsbnVerifier {
    static func isValid(_ string: String) -> Bool {
        let clearString = string.removeCharacter(char: "-")
        guard clearString.count == 10 else {
            return false
        }
        
        var sum: Int = 0
        for i in 0...9 {
            let numberString = clearString[String.Index(encodedOffset: i)]
            if numberString == "X", i == 9 {
                sum += 10
                continue
            } 
            guard let number = Int(String(numberString)) else{
                return false 
            }
            
            sum += number * (10 - i)
        }
        
        return sum % 11 == 0
    }
}

extension String {
    func removeCharacter(char: String) -> String {
        replacingOccurrences(of: char, with: "", options: NSString.CompareOptions.literal, range: nil)
    }
}
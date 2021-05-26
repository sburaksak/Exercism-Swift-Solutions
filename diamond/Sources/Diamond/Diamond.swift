//Solution goes in Sources

import Foundation

struct Diamond {
    static let letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
    static func makeDiamond(letter: String) -> [String] {
        var result: [String] = []
        let lettersToUse = letters.filter({$0 <= letter}).joined(separator: "")
        // ABCBA
        var lettersWithMiddleItemExpectedItem = lettersToUse
        for i in lettersToUse.reversed() {
            if String(i) != letter {
                lettersWithMiddleItemExpectedItem.append(i)
            }
        }
        // CBABC
        var lettersWithMiddleItemA = String(lettersToUse.reversed())
        for i in lettersWithMiddleItemA.reversed() {
            if i != "A" {
                lettersWithMiddleItemA += String(i)
            }
        }
        
        lettersWithMiddleItemExpectedItem.forEach { char in
            let line = lettersWithMiddleItemA.map{ $0 == char ? $0 : " " }
            result.append(String(line))
        }
        
        return result
    }
}


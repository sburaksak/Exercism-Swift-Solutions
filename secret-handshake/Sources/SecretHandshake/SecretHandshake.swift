//Solution goes in Sources

import Foundation

class SecretHandshake {
    var number: Int
    var multiplersWithTwoPower: [Int] = []
    
    init(_ number: Int) {
        self.number = number
    }
    
    var commands: [String] {
        if number <= 0 {
            return []
        }
        
        var count = number % 16
        var array: [Int] = []
        
        while (count > 0) {
            array.append(count % 2);
            count = count / 2
        }
        
        for i in 0...array.count - 1 {
            if array[i] == 1 {
                multiplersWithTwoPower.append(i)
            }
        }
        
        return findCommands()
    }
    
    private func findCommands() -> [String] {
        var result: [String] = []
        
        for i in multiplersWithTwoPower {
            let number = Int(pow(Double(2),Double(i)))
            let binary = String(number, radix: 2)
            result.append(convertBinaryToMessage(binary: binary))
        }
        
        return number > 16 ? result.reversed() : result
    }
    
    private func convertBinaryToMessage(binary: String) -> String {
        switch binary {
        case "1":
            return "wink" 
        case "10":
            return "double blink" 
        case "100":
            return "close your eyes" 
        case "1000":
            return "jump"
        default:
            return "error"
        }
    }
}

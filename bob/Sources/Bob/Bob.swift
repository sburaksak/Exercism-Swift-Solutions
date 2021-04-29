import Foundation

func hey(_ input: String) -> String {
    let trimmedString = input.trimmingCharacters(in: .whitespaces)
    
    if trimmedString.count == 0 {
        return "Fine. Be that way!" 
    }
    
    if trimmedString == trimmedString.uppercased() && trimmedString != trimmedString.lowercased() {
        return "Whoa, chill out!"
    }
    
    switch input.last {
    case "?":
        return "Sure." 
    default:
        return "Whatever." 
    }
}

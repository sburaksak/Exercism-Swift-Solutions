//Solution goes in Sources

import Foundation

struct Grains {
    static var total = UInt.max
    static func square(_ number: Int) throws -> UInt {
        if number <= 0 {
            throw GrainsError.inputTooLow(message: "Input[\(number)] invalid. Input should be between 1 and 64 (inclusive)")
        } else if number > 64 {
            throw GrainsError.inputTooHigh(message: "Input[\(number)] invalid. Input should be between 1 and 64 (inclusive)")
        }
        
        return UInt(pow(2, Double(number - 1)))
    }
    
    enum GrainsError: Error {
        case inputTooLow(message: String)
        case inputTooHigh(message: String)
    }
}

//Solution goes in Sources

import Foundation

class Clock: CustomStringConvertible, Equatable {
    private var hours: Int
    private var minutes: Int
    
    init(hours: Int, minutes: Int = 0) {
        var totalMinutes = (hours * 60 + minutes) % (24 * 60)
        if totalMinutes < 0 {
            totalMinutes += 24 * 60
        }
        
        self.hours = totalMinutes / 60
        self.minutes =  totalMinutes % 60
    }
    
    var description: String {
        "\(convertIntToLogicHourOrMinute(hours)):\(convertIntToLogicHourOrMinute(minutes))"
    }
    
    func add(minutes: Int) -> Clock {
        Clock(hours: self.hours, minutes: self.minutes + minutes)
    }
    
    func subtract(minutes: Int) -> Clock {
        Clock(hours: self.hours, minutes: self.minutes - minutes)
    }
    
    static func == (lhs: Clock, rhs: Clock) -> Bool {
        lhs.description == rhs.description
    }
}

extension Clock {
    func convertIntToLogicHourOrMinute(_ value: Int) -> String {
        let intAsString = "\(value)"
        return intAsString.count == 1 ? "0\(value)" :  "\(value)"
    }
}

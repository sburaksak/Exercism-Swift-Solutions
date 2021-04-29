//Solution goes in Sources

import Foundation

class Gigasecond {
    var description: String;
    
    init? (from: String) { 
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone.init(identifier: "UTC")
        guard var date = dateFormatter.date(from: from) else { return nil }
        date.addTimeInterval(pow(10, 9))
        description = dateFormatter.string(from: date)
    }
}


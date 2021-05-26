//Solution goes in Sources

enum CollatzConjectureError: Error {
    case error
}

struct CollatzConjecture {
    static func steps(_ n: Int) throws -> Int {
        guard n > 0 else { throw CollatzConjectureError.error }
        var number = n
        var count = 0
        
        while number != 1 {
            if number % 2 == 0 {
                number = number / 2
            } else {
                number = number * 3 + 1
            }
            count += 1
        }
        
        return count
    }
}

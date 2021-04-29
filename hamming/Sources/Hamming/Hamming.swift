//Solution goes in Sources

struct Hamming {
    static func compute(_ left: String, against: String) -> Int? {
        guard left.count == against.count else {
            return nil
        }
        
        let count = left.count
        if count == 0 {
            return 0
        }
        
        var result = 0
        for i in 0 ... count - 1 {
            if left[String.Index(encodedOffset: i)] != against[String.Index(encodedOffset: i)] {
                result += 1
            }
        }
        return result
    }
}
//Solution goes in Sources

struct ETL {
    static func transform(_ old: [Int: [String]]) -> [String: Int] {
        var result = [String: Int]()
        
        old.keys.forEach {
            guard let values = old[$0] else {
                return
            }
            for i in values {
                result[i.lowercased()] = $0
            }
        }
        return result
    }
}
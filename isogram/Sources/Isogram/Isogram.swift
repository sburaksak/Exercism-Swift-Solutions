//Solution goes in Sources

struct Isogram {
    static func isIsogram(_ string: String) -> Bool {
        var letters: [String] = []
        var result = true
        
        for i in string {
            guard !letters.contains(i.lowercased()) else {
                result = false
                break
            }
            
            if i != " " && i != "-" {
                letters.append(i.lowercased())
            }
        }
        
        return result
    }
}
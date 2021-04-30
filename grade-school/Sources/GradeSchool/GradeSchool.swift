//Solution goes in Sources

struct GradeSchool {
    var roster = [Int: [String]]()
    
    mutating func addStudent(_ name: String, grade: Int) {
        guard roster[grade] != nil else {
            roster[grade] = [name]
            return
        }
        roster[grade]!.append(name)
    }
    
    var isEmpty: Bool {
        return roster.keys.isEmpty
    }
    
    var sortedRoster: [Int: [String]] {
        let keys = roster.keys
        var result = [Int: [String]]()
        for i in keys {
            guard let unsortedArray = roster[i] else {
                break
            }
            result[i] = unsortedArray.sorted(by: <)
        }
        
        return result
    }
    
    func studentsInGrade(_ grade: Int) -> [String] {
        return roster[grade] ?? []
    }
}

//Solution goes in Sources

extension Array {
    func keep(body: (Element) -> Bool) -> [Element] {
        var result: [Element] = []
        self.forEach {
            if body($0) {
                result.append($0)
            }
        }
        return result
    }
    
    func discard(body: (Element) -> Bool) -> [Element] {
        keep {
            !body($0)
        }
    }
}

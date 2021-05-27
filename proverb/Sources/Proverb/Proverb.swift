//Solution goes in Sources

extension Array {
    func recite() -> String {
        guard !isEmpty else { return "" }
        var proverb = ""
        for i in 0...count - 1 {
            if i == count - 1 {
                proverb += "And all for the want of a \(first!)."
                continue
            }
            proverb += "For want of a \(self[i]) the \(self[i + 1]) was lost.\n"
        }
        return proverb
    }
}
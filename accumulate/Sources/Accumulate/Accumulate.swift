//Solution goes in Sources

extension Array {
    func accumulate<T>(_ operation: (_ input: T) -> T) -> [T] {
        let newArray = self.map {
            return operation($0 as! T)
        }
        return newArray
    }
    
    func accumulate<T>(_ operation: (_ input: T) -> [T]) -> [[T]] {
        let newArray = self.map {
            return operation($0 as! T)
        }
        return newArray
    }
}
struct ListOps {
    static func append<T>(_ firstArray: [T], _ secondArray: [T]) -> [T] {
        var result: [T] = firstArray
        secondArray.forEach {
            result.append($0)
        }
        return result
    }
    
    static func concat<T: Equatable>(_ array: [T]...) -> [T] {
        var result: [T] = []
        for i in array {
            result += i
        }
        return result
    }
    
    static func filter<T>(_ array: [T], operation: (T) -> Bool) -> [T] {
        var result: [T] = []
        array.forEach {
            if operation($0) {
                result.append($0)
            }
            
        }
        return result
    }
    
    static func length<T>(_ array: [T]) -> Int {
        var count = 0
        array.forEach {_ in 
            count += 1
        }
        return count
    }
    
    static func map<T>(_ array: [T], operation: (T) -> (T)) -> [T] {
        var result: [T] = []
        array.forEach {
            result.append(operation($0))
        }
        return result
    }
    
    static func foldLeft<T>(_ array: [T], accumulated: T, combine: (T, T) -> T) -> T {
        var result = accumulated
        array.forEach {
            result = combine(result, $0)
        }
        return result
    }
    
    static func foldRight<T>(_ array: [T], accumulated: T, combine: (T, T) -> T) -> T {
        var result = accumulated
        ListOps.reverse(array).forEach {
            result = combine($0, result)
        }
        return result
    }
    
    static func reverse<T>(_ array: [T]) -> [T] {
        var result: [T] = []
        array.forEach { 
            result.insert($0, at: 0)
        }
        return result
    }
}
//Solution goes in Sources

enum BinarySearchError: Error {
    case unsorted
}

class BinarySearch {    
    var list: [Int] = []
    var lowerIndex = 0
    var upperIndex = 0
    
    init(_ list: [Int]) throws {
        guard list == list.sorted(by: <) else {
            throw BinarySearchError.unsorted
        }
        
        self.list = list
        lowerIndex = 0
        upperIndex = list.count - 1
    }
    
    var middle: Int {
        (lowerIndex + upperIndex) / 2
    }
    
    func searchFor(_ number: Int) -> Int? {
        lowerIndex = 0
        upperIndex = list.count - 1
        
        while lowerIndex <= upperIndex {
            if list[middle] < number {
                lowerIndex = middle + 1
            } else if list[middle] > number {
                upperIndex = middle - 1
            } else {
                return middle
            }
        }
        
        return nil
    }
}
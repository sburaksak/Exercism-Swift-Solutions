//Solution goes in Sources

import Foundation

enum Type {
    case equal
    case sublist
    case superlist
    case unequal
}

func classifier(listOne: [Int], listTwo: [Int]) -> Type {
    if listOne == listTwo {
        return .equal
    }
    
    guard !listOne.isEmpty else {
        return .sublist
    }
    
    guard !listTwo.isEmpty else {
        return .superlist
    }
    
    if listTwo.count > listOne.count, isSublist(listOne: listOne, listTwo: listTwo) {
        return .sublist
    }
    
    if listOne.count > listTwo.count, isSuperList(listOne: listOne, listTwo: listTwo) {
        return .superlist
    }
    
    return .unequal
}

private func isSublist(listOne: [Int], listTwo: [Int]) -> Bool {
    for i in 0...listTwo.count - listOne.count {
        let a = Array(listTwo[i...i + listOne.count - 1])
        if a == listOne {
            return true
        }
    }
    return false
}

private func isSuperList(listOne: [Int], listTwo: [Int]) -> Bool {
    for i in 0...listOne.count - listTwo.count {
        let a = Array(listOne[i...i + listTwo.count - 1])
        if a == listTwo {
            return true
        }
    }
    return false
}

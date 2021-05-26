//Solution goes in Sources

import Foundation

func flattenArray<T>(_ array: [Any?]) -> [T] {
    var result: [T] = []
    for i in array {
        if let nested = i as? [Any?] {
            result.append(contentsOf: flattenArray(nested))
        } else if let value = i as? T {
                result.append(value)
        }
    }
    return result
}

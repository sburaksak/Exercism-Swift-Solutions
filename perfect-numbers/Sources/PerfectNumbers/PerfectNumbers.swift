//Solution goes in Sources

struct NumberClassifier {
    enum Classification {
        case perfect
        case deficient
        case abundant
    }
    
    var number: Int
    
    var  classification: Classification {
        var multiplier: [Int] = []
        
        for i in 1...number - 1 {
            if number % i == 0 {
                multiplier.append(i)
            }
        }
        
        let sum = multiplier.reduce(0, +)
        
        if sum == number {
            return .perfect
        }
        if sum > number {
            return .abundant
        }
        
        return .deficient
    }
}
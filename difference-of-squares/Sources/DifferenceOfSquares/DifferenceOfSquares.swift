//Solution goes in Sources

class Squares {
    var number: Int
    
    init (_ number: Int) {
        self.number = number
    }
    
    var sumOfSquares: Int {
        get {
            var result = 0
            for i in 1 ... self.number {
                result += i * i
            }
            
            return result
        }
    }
    
    var squareOfSum: Int {
        get {
            let sum = self.number * (self.number + 1) / 2
            return sum * sum
        }
    }
    
    var differenceOfSquares: Int {
        get {
            return squareOfSum - sumOfSquares
        }
    }
}
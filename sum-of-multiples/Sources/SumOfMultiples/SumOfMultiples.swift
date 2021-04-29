//Solution goes in Sources

func toLimit(_ n: Int, inMultiples: [Int]) -> Int {
    var result = 0
    var number = n - 1
    
    while number > 0 {
        for j in inMultiples  {
            if j != 0 && number % j == 0 {
                result += number
                break
            }
        }
        number -= 1
    }
    
    return result
}


//Solution goes in Sources

// Use the Sieve of Eratosthenes to find all the primes from 2 up to a given number.

// The Sieve of Eratosthenes is a simple, ancient algorithm for finding all prime numbers up to any given limit. It does so by iteratively marking as composite (i.e. not prime) the multiples of each prime, starting with the multiples of 2.

// Create your range, starting at two and continuing up to and including the given limit. (i.e. [2, limit])

// The algorithm consists of repeating the following over and over:

// take the next available unmarked number in your list (it is prime)
// mark all the multiples of that number (they are not prime)
// Repeat until you have processed each number in your range.

// When the algorithm terminates, all the numbers in the list that have not been marked are prime.

struct Sieve {
    var markedNumbers: [Int] = []
    var primes: [Int] = []
    
    init(_ limit: Int) {
        for i in 2...limit {
            if markedNumbers.contains(i) {
                continue
            }
            primes.append(i)
            for j in i...limit {
                if j % i == 0 {
                    markedNumbers.append(j)
                }
            }
        }
    }
}
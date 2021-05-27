//Solution goes in Sources

enum CircularBufferError: Error {
    case bufferEmpty
    case bufferFull
}

class CircularBuffer<T> {
    var buffer: [T] = []
    var capacity: Int?
    
    init(capacity: Int) {
        self.capacity = capacity
    }
    
    func write(_ element: T) throws {
        guard let capacity = capacity, buffer.count < capacity else {
            throw CircularBufferError.bufferFull
        }
        buffer.append(element)
    }
    
    func read() throws -> T {
        guard buffer.count > 0 else {
            throw CircularBufferError.bufferEmpty
        }
        return buffer.removeFirst()
    }
    
    func overwrite(_ element: T) {
        if buffer.count == capacity {
            buffer.removeFirst()
        }
        
        buffer.append(element)
    }
    
    func clear() {
        buffer.removeAll()
    }
}
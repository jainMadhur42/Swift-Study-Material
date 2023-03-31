//: [Previous](@previous)

import Foundation

// Function's signature is called definition
// function's body is called implementation written inside the { }

enum Operations {
    case add
    case multiply
    case division
}

//
protocol Operation {
    // Can create properties with get set
    // Can't create properties with set only
    
    var number1: Int { get set}
    var number2: Int { get }
    
    func getResult() -> Int
}


// Providing defination to some protocol is called implementation
class SumOperation: Operation {
    
    var number1: Int
    var number2: Int
    
    init(number1: Int, number2: Int) {
        
        self.number1 = number1
        self.number2 = number2
    }
    
    func getResult() -> Int {
           return number1 + number2
    }
    
}

class MultiplicationOperation: Operation {
    var number1: Int
    var number2: Int
    
    init(number1: Int, number2: Int) {
        
        self.number1 = number1
        self.number2 = number2
    }
    
    func getResult() -> Int {
        return number2 * number1
    }
}

class DivisionOperation: Operation {
    
    var number1: Int
    var number2: Int
    
    init(number1: Int, number2: Int) {
        self.number1 = number1
        self.number2 = number2
    }
    
    func getResult() -> Int {
        return number2 / number1
    }
}

class SubstractionOperation: Operation {
    
    var number1: Int
    var number2: Int
    
    init(number1: Int, number2: Int) {
        self.number1 = number1
        self.number2 = number2
    }
    
    func getResult() -> Int {
        return number2 - number1
    }
}

var operation: Operation

operation = SumOperation(number1: 23, number2: 22)
operation.getResult()

operation = MultiplicationOperation(number1: 12, number2: 10)
operation.getResult()

operation = DivisionOperation(number1: 5, number2: 15)
operation.getResult()

operation = SubstractionOperation(number1: 5, number2: 15)
operation.getResult()

//: [Next](@next)

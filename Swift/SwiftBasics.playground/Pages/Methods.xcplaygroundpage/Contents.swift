//: [Previous](@previous)

import Foundation

// Every instance of a type has an implicit property called self,
// which is exactly equivalent to the instance itself.
// You use the self property to refer to the current instance within its own instance methods.
// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/methods
class Counter {
    
    var count = 0
    
    func increment() {
        self.count += 1
    }
    
    func increment(by amount: Int) {
        self.count += amount
    }
    
    func reset() {
        self.count = 0
    }
}


// Counter is instance
var counter = Counter()
// increment is instance method as we are accessing it by instance.
counter.increment()

counter.increment(by: 5)

var counter1 = Counter()
counter1.increment(by: 15)
counter1.increment()


// By Default a value type can't modify the properties wihtin it's instance method.
// To modify the properties within instance method we need to mark instance method as mutating.

struct Point {
    var x = 0.0, y = 0.0
    
    mutating func updatePoint(x newX: Double, y newY: Double) {
        x += newX
        y += newY
    }
    
    mutating func updatePoint2(x newX: Double, y newY: Double) {
        
        self = Point(x: x + newX, y: y + newY)
    }
}

var somePoint = Point(x: 1.0, y: 1.0)
somePoint.updatePoint(x: 3.0, y: 3.0)
somePoint.updatePoint2(x: 5.0, y: 5.0)


// Type method
// One class for which only 3 instance can be created.
// Static property are only accessible by class name.
// Static function can access static property with out class name.

class InstanceTracker {
    
    static var counter = 0;
    
    // Failable initailizer
    init?() {
        if (InstanceTracker.counter > 3) {
            return nil
        }
        InstanceTracker.counter += 1
    }
    
    // Type method
    static func updateCounter() {
        counter += 2
    }
}

var instanec1 = InstanceTracker() // Counter
var instanec2 = InstanceTracker() // Counter
var instanec3 = InstanceTracker() // Counter
var instanec4 = InstanceTracker() // Counter
var instanec5 = InstanceTracker() // Counter

InstanceTracker.updateCounter()

//: [Next](@next)

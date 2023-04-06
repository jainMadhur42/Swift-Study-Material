//: [Previous](@previous)

import Foundation


// is operator is used to check the type of object.

class Vehicle {
    var speed = 0.0
    var numberOfTyres = 0
    
    var description:String {
        return "traveling at \(speed) miles per hour"
    }
    
    func makeNoise() {
        print("Making no noise at \(speed)")
    }
}

class Bicycle: Vehicle {
    
    func run() {
        print("Biclye is running on \(numberOfTyres) tyres")
        makeNoise()
    }
    
    override func makeNoise() {
        print("tik tik")
    }
    
}

// Stored properties can not be override
class Car: Vehicle {
    
    var gear = 4

    override var description: String {
        return super.description + " in gear \(gear)"
    }
}


let vehciles = [Car(), Bicycle(), Car(), Car(), Bicycle()]

var carCount = 0
var bicycleCount = 0

for vehcile in vehciles {
    
    if vehcile is Car {
       carCount += 1
    } else if vehcile is Bicycle {
        bicycleCount += 1
    }
}
print(carCount)
print(bicycleCount)

// as? as!
carCount = 0
bicycleCount = 0

for vehicle in vehciles {
    
    if let car = vehicle as? Car {
           carCount += 1
        print(car.gear)
    } else if let bicycle = vehicle as? Bicycle {
        bicycleCount += 1
        bicycle.run()
    }
   
}

carCount = 0
bicycleCount = 0

for vehicle in vehciles {
        
    _ = vehicle as! Car
}

struct SkateBoard {
    var wheelCount = 10
}

var things: [Any] = []

things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0, 5.0))
things.append(Car())
things.append({ (name: String) -> String in "Hello, \(name)" })



for thing in things {
    switch thing {
    case 0 as Int:
        print("0 is int")
    case 0 as Double:
        print("0 is Double")
    case let someInt as Int:
        print("an integer \(someInt)")
    case let someDouble as Double:
        print("an double \(someDouble)")
    case is Double:
        print("Some other Double")
    case let someString as String:
        print("an String \(someString)")
    case let (x,y) as (Double, Double):
        print("an Tuple \(x) \(y)")
    case let car as Car:
        print("an Car \(car)")
    case let stringClosure as (String) -> String:
        print(stringClosure("Madhur"))
    default:
        print("Something else")
    }
}


//: [Next](@next)

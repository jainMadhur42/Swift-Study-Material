//: [Previous](@previous)

import Foundation


// Final keyword is used to stop overriding of property
// Super keyword is used to access to super class property
// Reference of parent class can hold reference of child class because child class has all the properties which parent class has.


// Refernce of Bicycle class
// var bicycle: Bicycle

// Object of Tandem class
// bicycle = Tandem()

// We can access property based on reference type.
// Overrided property get called based on object type. -> Jis type ka object hoga uska overrided version call hoga.

// We can not override stored property.

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

// Inheritance sign
// class Name: Some other class Name
// Some other class Name -> Super class
// Class Name ->child class

// class childClass: SuperClass

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

var car = Car()


class Tandem: Bicycle {
    
    var numberOfPassenger = 0
}

var vehicle = Vehicle()
vehicle.makeNoise()





var tandem = Tandem()

// Refernce of Bicycle class
var bicycle: Bicycle

// Object of Tandem class
// bicycle = Tandem()


bicycle = Bicycle()
bicycle.numberOfTyres = 2
bicycle.run()

vehicle = bicycle

bicycle.makeNoise()
vehicle.makeNoise()

var bicycle2: Bicycle = Tandem()
// We can access property based on the type of object as

// We can access properties based on reference type
// Reference of parent class can hold reference of child class because child class has all the properties which parent class has.
bicycle = tandem








// bicycle = vehicle

//: [Next](@next)

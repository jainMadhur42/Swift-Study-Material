//: [Previous](@previous)

import Foundation

// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/properties#Lazy-Stored-Properties

// Properties

//class Student {
//
//    var rollNum:Int
//    var name:String
//
//    init(rollNum:Int, name: String) {
//
//        self.rollNum = rollNum
//        self.name = name
//    }
//}
//var studnet1 = Student(rollNum: 23, name: "Madhur")

struct Person {
    
    var aadharNumber:Int
    var name:String
    
}

// 1. Stored Properties

// 2. Computed properties

//   3. lazy properties :
//    1. A lazy stored property is a property whose initial value isn’t calculated until the first time it’s used. You indicate a lazy stored property by writing the lazy modifier before its declaration.
//    2. A lazy property cannot be marked as let as for let memory need to provide at the initialization time.


class Student {
    
    // Stored Properties
    var rollNum:Int
    var name:String
    // Lazy Property
    lazy var totalMarks: Int = 100
    
    
    init(rollNum:Int, name: String) {
        
        self.rollNum = rollNum
        self.name = name
    }
    
    func initializeTotalMarks() {
        self.totalMarks
    }
}

var student1 = Student(rollNum: 23, name: "Madhur")
student1.initializeTotalMarks()
student1


class Circle {
    
    var radius: Int
    // Computed proeperty
    var area: Float {
        return 2 * 3.14 * Float(radius)
    }
    
    init(radius: Int) {
        self.radius = radius
    }
}

var circle = Circle(radius: 12)
circle.area
circle.radius = 25
circle.area


struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

// If you don't want to create variable set(newCenter),
// Swift automatically provide newValue by which you can write "set" only.
// you can skip variable declaration newCenter
//set {
//    origin.x = newValue.x - (size.width / 2)
//    origin.y = newValue.y - (size.height / 2)
//}


struct Rect {
    var origin = Point()
    var size  = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}


var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))

square.center
square.center = Point(x: 15.0, y: 15.0)
square.center

class StepCounter {
    
    var totalStep:  Int = 0 {
        willSet {
            // Before changing the value
            print("About to complete \(newValue)")
        }
        didSet {
            // After Changing the value
            if (totalStep > oldValue) {
                print("Added \(totalStep - oldValue) steps")
            }
        }
    }
}

var stepCounter = StepCounter()
stepCounter.totalStep = 200
stepCounter.totalStep = 360



//1. you can't create new stored property inside the extension.
// 2. You can create computed property inside the extension.
// 3. you can't add lazy properties inside the extension.
extension Circle {
    
    var volume: Float {
        return Float(3.14 * Double(radius * radius))
    }
    
    // lazy var display: String = "Madhur"
    
    func calculateVolume() -> Float {
        return Float(3.14 * Double(radius * radius))
    }
}

var circle1 = Circle(radius: 10)
circle1.calculateVolume()
circle1.volume

//: [Next](@next)

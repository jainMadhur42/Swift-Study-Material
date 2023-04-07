//: [Previous](@previous)

import Foundation

// extension are used to add new functionality in the existing type.

// Rules for extension
// 1. We can add only computed property inside extension
// 2. We can add instance and type method in extension
// 3. We can make init inside extension
// 4. We can make nested types in extension

extension Double {
    
    enum Types {
        case km
        case m
        case cm
    }

    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self/100.0 }
    
    func convert(conversionType: Types) -> Double {
        switch conversionType {
        case .cm:
            return cm
        case .km:
            return km
        case .m:
            return m
        }
    }
    
}

extension Double {
    static func multiply(with value: Int, number: Double) -> Double {
        return Double(value) * number
    }
}


let meter: Double = 12.5
print(meter.m)
print(meter.km)

meter.convert(conversionType: .km)
Double.multiply(with: 10, number: 13)
// 3 Type of properties
// 1. Stored
// 2. Lazy
// 3. computed
 
var stored: Double = 12.0

class LazyDemo {
    lazy var property: Double =  13.0
}

var computed: Double {
    return 12 * stored
}


//: [Next](@next)

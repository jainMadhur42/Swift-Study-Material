//: [Previous](@previous)

import Foundation

// 1. Strong refrence
// 2. Weak Refernce
// 3. Unowned Refernce

class Apartment {
    
    let plotNumber: String
    var person: Person?
    
    init(plotNumber: String) {
        self.plotNumber = plotNumber
    }
    
    deinit {
        print("\(plotNumber) is being deinit")
    }
}

class Person {

    let name: String
    weak var apartMent: Apartment?
    
    init(name: String) {
        self.name = name
        print("\(name) is being init")
    }

    deinit {
        print("\(name) is being deinit")
    }
}

var person: Person? = Person(name: "Madhur")
var apartment: Apartment? = Apartment(plotNumber: "461")

person!.apartMent = apartment
apartment!.person = person

person =  nil
apartment =  nil

//
//
//var ref1: Person?
//var ref2: Person?
//var ref3: Person?
//
//ref1 = Person(name: "Madhur")
//ref2 = ref1
//ref3 = ref1
//
//ref1 = nil
//ref2 = nil
//ref3 = nil




//: [Next](@next)

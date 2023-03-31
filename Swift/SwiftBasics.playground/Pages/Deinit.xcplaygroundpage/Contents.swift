//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class Employee {
    
    var name: String
    var empId: String
    var profile: String
    
    init(name: String, empId: String, profile: String) {
        self.name = name
        self.empId = empId
        self.profile = profile
    }
    
    //  It get called when object is getting deallocated from memory
    deinit {
        print("Employee \(name) get deinit")
    }
    
}

var emp: Employee? = Employee(name: "Madhur", empId: "12", profile: "dev")
emp = Employee(name: "Jain", empId: "12", profile: "dev")
var emp2  = emp




//: [Next](@next)

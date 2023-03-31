//: [Previous](@previous)

import Foundation

// 1. When parent child relation comes into picture it's child class duty to call super class init.
// 2. We call parent class init by using super keyword.
// 3. Child class property should get inititialize before call of super init.



// 4. Convi. init can not call super class designated init.
// 5. Designated init can only call super class designated init.
// 6. Designated init can't access Designated init of same class (You can't write self.init() inside the designated init.)
// 7. Convi. init from same class can call each other but not parent class Convi. or designated init.

// 2 - Phase init.
// 8: First line of statment of convenience init must be the call of designated init.
// 9: It can't access any property before calling designated init.

class ParentClass {
    
    var parent: Int
    
    init(parent: Int) {
        self.parent = parent
    }
}


class ChildClass: ParentClass {
    
    var child: Int
    
    init(child: Int) {
        
        self.child = child
        super.init(parent: 12)
    }

}

class Person {
    
    var name: String
    var age: Int = 18
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


class Employee: Person {
    
    var empId: String
    var profile: String
    
    init(name: String, empId: String, profile: String) {
        self.empId = empId
        self.profile = profile
        
        super.init(name: name, age: 21)
        self.age = 22
        
    }
    
//    override init(name: String) {
//        self.empId = ""
//        self.profile = "Engineer"
//        super.init(name: name)
//    }
    
    convenience init(name: String, id: String) {
        
        self.init(name: name, empId: id, profile: "Engineer")
        self.empId = "15"
    }
}



var empMadhur  = Employee(name: "Madhur", empId: "12", profile: "iOS")
empMadhur.name

var empRahul  = Employee(name: "Rahul", id: "13")
empRahul.name
empRahul.empId

empRahul.age

//: [Next](@next)

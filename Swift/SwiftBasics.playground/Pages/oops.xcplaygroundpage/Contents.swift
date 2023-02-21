//: [Previous](@previous)

import Foundation

//Objects
//Classes
//Abstraction
//Inheritance
//Polymorphism
//Encapsulation

// Abstraction
// Inheritance
// Polymorphism
// Encapsulation

// class: Class is blueprint of real world entity.
// Encapsulation : Wrapping of member variable and member function into single entity is called encapsulation
// Abstraction: Abstraction is a process which displays only the information needed and hides the unnecessary information. We can say that the main purpose of abstraction is data hiding. Abstraction means selecting data from a large number of data to show the information needed, which helps in reducing programming complexity and efforts.
// Object : Object is the real world entity which exist inside the memory. Objects has state and behaviour.

class Train {
    
    // Properties: Member Variable
    var tyres: Int = 12
    var seats: Int?
    var engine: Int
    

    init(engine: Int) {
        self.engine = engine
    }
    
    // Member Function
    func run(){
        print("Training is running on \(tyres) wheels")
    }
    
    func playHorn() {
        print("Playing Horn")
    }
    
    
    func increaSeTyre(newCount: Int) {
        self.tyres += newCount
    }
    
    deinit {
        // Deinit method gets called automatically when object get remove from Memory.
        print("Object gets deallocated")
    }
}

// var train1 = Train(tyres: 120, seats: 560, engine: 2)
// var train1 = Train(seats: 256, engine: 2)
var train1: Train? = Train(engine: 2)
train1?.increaSeTyre(newCount: 20)

train1!.tyres = train1!.tyres + 20

func increaSeTyre(train: Train) {
    train.tyres = 23
}

increaSeTyre(train: train1!)
print(train1!.tyres)

train1 = nil

// By make class object as let we are saying that this object can't hold the address of another object.
// We can change the state of object but we can't change the object.
let train2 = Train(engine: 23)
train2.tyres = 123

//  train2 = Train(engine: 25)



//  === operator: It compare object

var train3 = Train(engine: 23)
var train4 = train3

if train3 === train4 {
    print("Object are same")
}

train4.tyres = 23
if train3 === train4 {
    print("Object are same")
}

train3
train4

// !==

//: [Next](@next)

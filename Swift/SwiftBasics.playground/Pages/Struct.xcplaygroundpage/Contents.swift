//: [Previous](@previous)

import Foundation

// 1. Struct don't have deinit.
// 2. Mutating keyword is used when we want to change the member variable of struct within member function.
// 3. Struct are value type.
// 4. Struct get memory from Stack while classes get memory from Heap(all the reference type like closure, function , classes).
// 5. Struct provide default init only if we don't provide our own init.
struct Train {
    
    // Properties: Member Variable
    var tyres: Int
    var seats: Int
    var engine: Int
    
    
    // Member Function
    func run(){
        print("Training is running on \(tyres) wheels")
    }
    
    func playHorn() {
        print("Playing Horn")
    }
    
    // Mutating keyword is used when we want to change the member variable of struct within member function.
    mutating func increaSeTyre(newCount: Int) {
        self.tyres += newCount
    }
    
}

var train = Train(tyres: 123, seats: 1042, engine: 2)

// For value type you are not allowed to chnage the state if you have created object as let.
let train2 = Train(tyres: 520, seats: 1042, engine: 2)
// train2.engine = 20





//: [Next](@next)

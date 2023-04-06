//: [Previous](@previous)

import Foundation

var name: String?

class Residence {
    var numberOfRooms = 3
    var address: Address?
}
class Person {
    
    var residency: Residence?
}

var madhur = Person()
// 1. ! Force unwrap means we are saying to compiler that if the value is nil then code should crash.
// madhur.residency!.numberOfRooms

// 2. ? Optional chaining if any reference is nil the complete chain will return nil.
// but the code will not get crash. But the complete chain will return an optional.
// var roomCount = madhur.residency?.numberOfRooms


// 1. if let
var residency = Residence()
// madhur.residency = residency


// roomCount variable scope is limited. it is only accessible in if block.
if let roomCount = madhur.residency?.numberOfRooms {
    // If value is not nill this block will execute
    print("Room count for madhur \(roomCount)")
} else {
    // If value is nill this block will execute
    print("Residency not set for madhur")
}


class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    
    func buildingIdentifier() -> String? {
        
        
        // We can unwrap multiple variable in a same if let statement.
        if let buildingNumber = buildingNumber
            , let street = street {
            
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            
            return buildingName
        } else {
            return nil
        }
    }
}


// Gurad Let
func checkResidency() {
    
    // Scope of residency variable will be after the else block closing bracket. "}"
    guard var residency = madhur.residency else {
        // if object is nill this block will execute
        // return statement is mandatory for guard let statement
        return
    }
    
    residency.numberOfRooms
    
}

// ??
// This calculation is not returning Int? as if the chain fails it will return 0 as default value.
var roomCount = madhur.residency?.numberOfRooms ?? 0



if let residency = madhur.residency,
   let address = residency.address,
   let buildingName = address.buildingName {
    
}

guard let residency = madhur.residency,
      let address = residency.address,
      let buildingName = address.buildingName else {
          //
        fatalError("Error occured")
}

if let buildingName = madhur.residency?.address?.buildingName {
    
}
//
//: [Next](@next)

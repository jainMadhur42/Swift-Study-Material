//: [Previous](@previous)

import Foundation

print("================ Dictionary ======================")

//Syntax
var nameString: [Int:String] = [:]

// insert element
nameString[1] = "One"
nameString[2] = "Two"

// iteration
for (key, value) in nameString {
    print("Key is \(key) and value is \(value)")
}

// update
// nameString[1] = "1"

for (key, value) in nameString {
    print("Key is \(key) and value is \(value)")
}

// checking value in dict.
// nameString[3] = "three"
if let name = nameString[3] {
    // If some value is preset on key
    print(name)
} else {
    // If some value is not preset on key
    print("No value present on key 3")
}

// Methods
print(nameString.isEmpty)
// nameString.updateValue("2", forKey: 2)

for (key, value) in nameString {
    print("Key is \(key) and value is \(value)")
}

print("================ Key ======================")
for key in nameString.keys {
    print(key)
}
print("================ value ======================")
for value in nameString.values {
    print(value)
}


//: [Next](@next)

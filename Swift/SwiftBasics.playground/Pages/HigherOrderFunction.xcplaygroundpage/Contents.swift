//: [Previous](@previous)

import Foundation

//https://medium.com/@Dougly/higher-order-functions-in-swift-sorted-map-filter-reduce-dff60b5b6adf
// https://levelup.gitconnected.com/higher-order-functions-in-swift-35861620ad1


// Filter -> Filter element based on some conditio
// Map: Transform one obejct to another object
    // 1. compactMap-> Elementate nil value
    // 2. FlatMap -> Convert 2D Array to one D array (flatter the array)
// Sorted: Sort the element
// Reduce:


// Sorted:
let numbers = [0,2,1,3,6,4,9,7,8]
let decendingNumber = numbers.sorted { number1, number2 in
    print("number1 \(number1)")
    print("number2 \(number2)")
    print("===================")
    return number2 > number1
}
print(decendingNumber)

let decendingNumber2 = numbers.sorted(by: <)
print(decendingNumber2)


/// Map
let numberString = numbers.map { number in
    return "\(number)"
}

let numberString2 = numbers.map { "\($0)" }

print(numberString)
print(numberString2)

// Filter:
var numberLessThanFive = numbers.filter { number in
    return number < 5
}

var numberLessThanFive2 = numbers.filter { $0 < 5 }

print(numberLessThanFive)
print(numberLessThanFive2)

// Reduce
var result = numbers.reduce(0) { partialResult, number in
    print("partialResult \(partialResult) and number \(number)")
    return partialResult + number
}

print(result)


//Compact Map: eleminate Nill value

var names = ["Madhur","A","B",nil]

var name = names.compactMap { name in
    return name
}


print(name)

let mapped = numbers.map { Array(repeating: $0, count: 2) }

print(mapped)

let mapped2 = numbers.flatMap { Array(repeating: $0, count: 2) }
print(mapped2)
//1, 2, 3, 4
//[[1,1], [2,2]]


// Sorted: Sort String Array
// Map:  store Reminder inside the array
// Filter : filter even number only from integer array
// Reduce : Multiplication of all number
// https://www.swiftbysundell.com/basics/map-flatmap-and-compactmap/
//: [Next](@next)

//: [Previous](@previous)

import Foundation

// https://www.donnywals.com/closures-in-swift-explained/

// Closure reference Type.
var doublethevalue : (Int) -> Int = { number -> Int in
    return number * 2
}
doublethevalue(10)


var multiply : (Int, Int) -> Int = { (number1, number2) -> Int in
    return number1 * number2
}
multiply(2, 6)

// $0 means first argument of closure
// $1 means second argument of closure
var multiply2 : (Int, Int) -> Int = {
    return $0 * $1
}
multiply2(2, 6)

func printMathResult(mathFunction: (Int,Int) -> Int, a: Int, b: Int) {
    print("printMathResult \(mathFunction(a,b))")
}

printMathResult(mathFunction: multiply2, a: 12, b: 2)

var multiply4 = { (number1: Int, number2: Int) -> Int in
    return number1 * number2
}
multiply4(2, 6)

// 1. Closure Caputre list

var thing = "cars"
thing = "airplane2"
let closure = { [thing] in
  print("I like \(thing)")
}
thing = "airplanes"
closure()

//1. Capture ListType
//2. Closure as reference Type
//3. autoclosre
//4. Higher Order function.

var myClosure: (String) -> String = { name -> String in
    return "welcome \(name)"
}
myClosure("Rupali")


func passClosure(myClosure: (String) -> String, name: String) {
    print(myClosure(name))
}
passClosure(myClosure: myClosure,name: "Madhur")

passClosure(myClosure: { name in
    return "My name is \(name)"
}, name: "Saraswati")

func trailingClosure(closure: (Int) -> String) {
    closure(12)
}

trailingClosure { age in
    var updatedAge = age * 2
    return "\(updatedAge)"
}









// Sorted: Sort String Array
let array = ["Aman", "Jay", "Radha", "Ajay", "Rekha", "Asha", "Maya"]
let sortedArray = array.sorted { str1, str2 in
    return str2 > str1
}
print(sortedArray)
//
let sortedArray1 = array.sorted { $1 > $0 }
print(sortedArray1)



// Map: store Reminder inside the Array
let array2 = [8,11,7,19,6,9,13,15]
let reminderArray = array2.map { number in
    return number%5
}
print(reminderArray)



// Filter: filter even number only from integer array

let array3 = [0,5,12,3,4,6,8,10,11,7,9,18]

let evenArray = array3.filter { number in
    return number%2 == 0
}
print(evenArray)
let evenArray1 = array3.filter { $0%2 == 0 }
print(evenArray1)


//: [Next](@next)

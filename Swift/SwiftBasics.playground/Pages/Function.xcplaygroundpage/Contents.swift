//: [Previous](@previous)

import Foundation

// Function is block which is Identifiable by it's name and we can resuse it again ans again.



// Definition o
// name is argument label which is optional
// person is parameter name which is mandatory
// whatever comes after -> is return type.
// return typer is also optional if you want to return something from your fucntion then only we write return type else we can ignore it.
// code written inside  { } is called block.

func greet(name person: String) -> String {
    
    let greeting = "welcome \(person)"
    return greeting
}

// Calling
let message = greet(name: "Rupali")
print(message)

let message1 = greet(name: "Madhur")
print(message1)

let message2 = greet(name: "Jay")
print(message2)

let message3 = greet(name: "veeru")
print(message3)

// Function overloading can be done based on argument label.
func greet(person: String) -> String {
    
    let greeting = "welcome \(person)"
    return greeting
}

print(greet(person: "Vijay"))

// by using _ we can remove the dependecy of using argument label and parameter name while calling the function.
func greet(_ person: String) -> String {
    
    let greeting = "welcome \(person)"
    return greeting
}

print(greet("Jain"))

// Function with multiple argument
func max(number1 number1: Int, number2 number2: Int) -> Int {
    if number1 > number2 {
        return number1
    }
    else {
        return number2
    }
}

func max(_ number1: Int, _ number2: Int) -> Int {
    if number1 > number2 {
        return number1
    }
    else {
        return number2
    }
}

print(max(number1: 8, number2: 7))
print(max(5, 6))


// ternary operator condition ? true case : false case
// return keyword is optional if function has only 1 line statement.
func max(number3: Int, number4: Int) -> Int {
     number3 > number4 ? number3 : number4
}

print(max(number3: 13, number4: 15))

// Function without return type
func greet2(person: String) {
    print("Welcome \(person)")
}

greet2(person: "Madhur")

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    
    if array.isEmpty { return nil }
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array {
        if value < currentMin {
            currentMin = value
        }
        if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax(array: [6,5,8,7,4,32,1]) {
    // If value is not nill then this block will execute
    bounds.min
    bounds.max
} else {
    // if value is nill this block will execute
}

// Default Values
// if we provide default value to an argument it is optional to pass value while we call function.
// If we pass value for default param compile will override our default value with our value

func defaultDemo(paramWithoutDefault: Int, pramWithDefault: Int = 15) {
    print(" paramWithoutDefault \(paramWithoutDefault) and pramWithDefault \(pramWithDefault)")
}

defaultDemo(paramWithoutDefault: 12)
defaultDemo(paramWithoutDefault: 13, pramWithDefault: 20)


// variadic parameter -> Multiple value in single parameter
func artimaticMean(numbers: Double...) -> Double {
    var total: Double = 0
    
    for number in numbers {
        total += number
    }
    
    return total/Double(numbers.count)
}

artimaticMean(numbers: 1,2,5,6,4,7)

// By default func parameter are constant
// By inout keyword you force calling function to pass address of var in parameter.
// & is use to access address of variable
func swap(a: inout Int, b: inout Int) {
    
    let temp = a
    a = b
    b = temp
}
var a = 2
var b = 5
swap(a: &a, b: &b)

print(a)
print(b)

// Write a swift function that counts the number of unique values in an array.
// eg. input : [1, 2, 3, 3] —> output : 3
// input : [4, 5, 6, 7, 6, 5, 3, 4, 9] —> output: 6
// Dictnory

//
//func addTwoInts(_ a: Int,_ b: Int) -> Int { a + b }
//func mulTwoInts(_ a: Int,_ b: Int) -> Int { a * b }
//
//var mathmatics: (Int, Int) -> Int = addTwoInts
//print("addTwoInts \(mathmatics(5,2))")
//mathmatics = mulTwoInts
//print("mulTwoInts \(mathmatics(5,2))")
//
//func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
//    print("printMathResult \(mathFunction(a,b))")
//}
//
//printMathResult(addTwoInts,12,15)
//printMathResult(mulTwoInts,12,15)
//
//
//// Function as return type
//func stepForward(_ input: Int) -> Int {
//    input + 1
//}
//
//func stepBackward(_ input: Int) -> Int {
//    input - 1
//}
//// True forward
//// False backward
//func chooseStep(direction: Bool) -> (Int) -> Int {
//    direction ? stepForward : stepBackward
//}
//
//let function = chooseStep(direction: false)


//:
[Next](@next)

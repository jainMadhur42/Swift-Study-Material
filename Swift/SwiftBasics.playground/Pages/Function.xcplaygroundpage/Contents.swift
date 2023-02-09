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



// dic 4, 5, 6, 7, 6, 5, 3, 4, 9
// 4 -> 1, 5-> 2, 6-> 3, 7->4, 3->5, 9-> 6
//if emelment is not presenet
//    increment counter
//    add element in Dictionary
// if element is alredy present then don't do annything just move to next lement

// Write a swift function that counts the number of unique values in an array.
// eg. input : [1, 2, 3, 3] —> output : 3
// input : [4, 5, 6, 7, 6, 5, 3, 4, 9] —> output: 6
// Dictnory

func countUniqueElement(input: [Int]) {
    var count = 0;
    var dictnory: [Int: Int] = [:]
   
    for i in input {
        
        if dictnory[i] == nil {
            // If value is present that means it is duplicate
            dictnory[i] = 1
            count += 1
        }
    }
    print("number of uniqueue elment in array are \(count)");
}

countUniqueElement(input: [1, 2, 3, 3])
countUniqueElement(input: [4, 5, 6, 7, 6, 5, 3, 4, 9])


func addTwoInt(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

func multiply(number1: Int, number2: Int) -> Int {
    return number1 * number2
}


var mathFunction: (Int, Int) -> Int
mathFunction = addTwoInt

print(mathFunction(2,3))

mathFunction = multiply
print(mathFunction(2,3))

func printMathResult(mathFunction: (Int,Int) -> Int, a: Int, b: Int) {
    print("printMathResult \(mathFunction(a,b))")
}

printMathResult(mathFunction: addTwoInt, a: 5, b: 6)
printMathResult(mathFunction: multiply, a: 5, b: 6)

func area(l: Int, b: Int) -> Int {
    return (l*b)/2
}
printMathResult(mathFunction: area, a: 5, b: 6)

func getMethod(number: Int) -> (Int, Int) -> Int {
    switch number {
    case 1:
        return area
    case 2:
        return multiply
    case 3:
        return addTwoInt
    default:
        print("don't know")
        return addTwoInt
    }
}

var method = getMethod(number: 2)

printMathResult(mathFunction: method,a: 12,b: 14)
printMathResult(mathFunction: getMethod(number: 1),a: 12,b: 14)

//: [Next](@next)

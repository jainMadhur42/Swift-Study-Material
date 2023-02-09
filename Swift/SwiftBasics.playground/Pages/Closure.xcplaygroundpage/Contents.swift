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


//: [Next](@next)

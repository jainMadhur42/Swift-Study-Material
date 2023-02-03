import Foundation
import Darwin

//val
var name: String? = "Madhur"
name = "Jain"


let pi = 3.14


var greeting: String
greeting = "Welcome"

print("Hai Madhur \(greeting) the value of pi = \(pi)")

// command + / to comment the multiline code

// This is called single line comment
//This
//is
//multiline
//comment

// Int , UInt , Float, Double, Character, Boolean
// Int can store negative value as well
var var1: Int // -> Int32 for 32 bit machine -2147483648 to 2147483647
var var2: Int // -> Int64 for 64 bit machine

// Unsigned int is to store only positive number
var decimalF: Float = 123.55 // it is
var decimalD: Double = 123.55

var bool: Bool = true
var char: Character = "c"
print("\(char)")

var greetiung = "🐱"

typealias Feet = Int

var width: Feet = 12
print(width);
print("=================Operators==========================")
// Operators
//1. Unary operator -a,-b
//2. Ternary operator a ? b: c Ternary operator
//3. Binary operator +,-,&&, ||

//  binary operation
// + - * / are arithmetic binary operation
var a = 10
var b = 20

var resultOfSum = a+b;
var resultOfsub = a-b;
var resultOfMul = a*b;
var resultOfDiv = a/b;

print("\(a+b)")
print("\(a-b)")
print("\(resultOfMul)")
print("\(resultOfDiv)")



// Division
print("\(7/5)")


// Module
print("\(7%5)")

var value1 = 12
value1 += 10 // -> value1 = value1 + 10

value1 -= 10
value1 *= 10
value1 /= 10
value1 %= 10


// comparison operator
// == , !=, >, <, >=, <=
value1 = 30
var value2 = 30

print("\(value1 == value2)")
print("\(value1 != value2)")
print("\(value1 >= value2)")
print("\(value1 <= value2)")
 
// && , ||
// (A == B) && (C == D)
// (A == B) || (C == D)


// OP1  OP2
//  1    1
//  1    0
//  0    1
//  0    0

 // Optional?
name = nil

var petName: String?
//petName = "Dog"
// 1. if let
// gurad let
// !
// print(petName!)
// if let

if let pName = petName {

    print("Pet name is \(pName)")
} else {
    print("Pet name is nil")
}


                           // when condition is true
var petfullName = (petName == nil) ? "Cat" : petName
print(petfullName)

var fullName = petName ?? "Don't know"
print(fullName)

func demo(petName: String?) {
    
    guard let name = petName else {
        print("Pet name is nill")
        return
    }
    print("Pet name is not nill pet name is \(name)")
}
//demo(petName: nil);
demo(petName: "Cow");

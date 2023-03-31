//: [Previous](@previous)

import Foundation


// 1. It's compulsory to provide initial value to all stored properties.
// 2.
class Fahrenheit {
    
    var temprature: Double = 32
    
    init(temprature: Double) {
        self.temprature = temprature
    }
}

var ferin = Fahrenheit(temprature: 120)

class Celsius {
    var temp: Double
    
    init(fromFerenhite ferenhite: Double) {
        temp = (ferenhite - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temp = kelvin - 273.15
    }
}

var bollingPointerOfWater = Celsius(fromFerenhite: 212.0)
var freezingPointOfWater = Celsius(fromKelvin: 273.15)


// Optional property type
// We can't mark let as optional. as either we need to provide the value during declaration time or by using init.
class SurveQuestion {
    
    let question: String
    var response: String?
    
    init(question: String) {
        self.question = question
    }
    
//    init() {
//
//    }
    
    func ask() {
        print(question)
    }
}

var surVey = SurveQuestion(question: "Do you like Cheese")

// var surVey = SurveQuestion()

surVey.ask()

surVey.response = "Yes i like cheese"
if let response = surVey.response {
    print(response)
}

// Default init
// If complier knows initial value of each property then it provide default init.
// Either you can provide initial value during declaration or can mark property as optional.



class ShoppingListItem {
    
    var name: String?
    var quantity: Int
    var purchased: Bool
    
    //Designated-> These are the primary initialiser it initialize all the properties introduce by the class.
    init(name: String, quantity:Int, purchased: Bool) {
        self.name = name
        self.quantity = quantity
        self.purchased = purchased
    }
    
    init(name: String, quantity: Int = 10) {
        self.name = name
        self.quantity = quantity
        self.purchased = true
    }
    
    
//    convenience init(name: String, quantity: Int) {
//        self.init(name: name)
//    }
//
    // convenience-> It is for convenience of developer. it give alternate way to init object when you have default value for some properties.
    // 2. convenience init will always call designated init.
    convenience init(name: String) {
        self.init(name: name, quantity: 1, purchased: false)
    }
    
}

var item1 = ShoppingListItem(name: "Cheese", quantity: 1, purchased: false)
var item2 = ShoppingListItem(name: "Paneer", quantity: 1, purchased: false)
var item3 = ShoppingListItem(name: "Masala", quantity: 1, purchased: false)
var item4 = ShoppingListItem(name: "Butter", quantity: 1, purchased: false)
var item5 = ShoppingListItem(name: "Milk")

var item6 = ShoppingListItem(name: "Food", quantity: 10)

// var item = ShoppingListItem()

//: [Next](@next)

//: [Previous](@previous)

import Foundation
import PlaygroundSupport

//1. do- catch try ->try!, try?
//2. throws is used to propagate error
//3. defer block get called at the end of execution of any function.
//  if multiple defer are getting used they will call in Last in first out(Stack) order

func deferTesting() {
    defer {
        print("Clean up 1")
    }
    defer {
        print("Clean up 2")
    }
    defer {
        print("Clean up 3")
    }
    print(#function)
    print(#line)
    print(#file)
}

deferTesting()

enum MachineError: Error {
    case invalidSelection
    case outOfStock
    case insufficientFund(coinsNeeded: Int)
}

// Throw keyword is used to throw any error.
throw MachineError.outOfStock


struct Item {
    var price: Int
    var count: Int
}

class Machine {
    
    var inventory: [String: Item] = ["Choclate": Item(price: 10, count: 7),
                                    "Colddrink": Item(price: 20, count: 10),
                                    "Chips": Item(price: 15, count: 30)]
    
    var coinDeposite = 0
    
    func returnItem(itemName: String) throws {
        
        guard let item = inventory[itemName] else {
            throw MachineError.invalidSelection
        }
        
        guard item.count > 0 else {
            throw MachineError.outOfStock
        }
        
        guard item.price <= coinDeposite else {
            throw MachineError.insufficientFund(coinsNeeded: item.price - coinDeposite)
        }
        
        coinDeposite -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[itemName] = newItem
        
        print("Dispens \(itemName)")
    }
}


var vendingMachine = Machine()
vendingMachine.coinDeposite = 1

 
do {
    try vendingMachine.returnItem(itemName: "Choclate")
    defer {
        print("Clean up")
    }
} catch MachineError.invalidSelection {
    print("Invalid Selection")
} catch MachineError.outOfStock {
    print("Stock not available")
} catch MachineError.insufficientFund(let coinsNeeded) {
    print("insufficientFund pleaseinsert \(coinsNeeded)")
} catch {
    print("Unexpected error")
}

do {
    try vendingMachine.returnItem(itemName: "Choclate")
} catch MachineError.invalidSelection, MachineError.outOfStock, MachineError.insufficientFund {
    print("invalid selection,out of stock, or not enough money")
}

// generic Error handling

do {
    try vendingMachine.returnItem(itemName: "Choclate")
} catch let error {
    print("Error occured \(error)")
}


// try? -> when we use try? it returns an optional value. so it developer duty to either handle it with guard let or if let.
// try! -> When we use try! we force unwrap the error and application will crash if something wrong happen in the code.

var url = URL(string: "www.googl")!
var data = try! Data(contentsOf: url)

guard var data = try? Data(contentsOf: url) else {
        fatalError("")
}
print("data \(data)")





//: [Next](@next)

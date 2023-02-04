//: [Previous](@previous)

import Foundation

let add: (Int, Int) -> Int = { return $0 + $1 }
add(3,5)

func test() {
    var thing = "cars"
    let closure = { [thing] in
      print("I like \(thing)")
    }
    closure()
    thing = "airplanes"
    closure()
}

test()

//: [Next](@next)

//: [Previous](@previous)

import Foundation

// sum of all element in the array

var marks: [Int] = [5,8,7,4,9,8]
var sum = 0
for i in marks {
    sum += i
}

print(sum)

for value in 1...20 where value%2 == 0 {
    print(value)
}

print("========================================")

for i in 0...4 {
    
    for j in 0..<4-i {
        print(" ", terminator:  "")
    }
    for k in 0...i {
        print("*", terminator: " ")
    }
    print(" ")
}

var array = Array(1...100)
for i in 0...array.count {
    
    var value = array[i]
    print(value)
}



//: [Next](@next)

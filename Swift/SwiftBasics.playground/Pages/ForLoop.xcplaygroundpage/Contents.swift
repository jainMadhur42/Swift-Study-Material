//: [Previous](@previous)

import Foundation


var i = 0
print("================repeat While Loop======================")

// It execute at least once
repeat {
    // code here
    print("repeat while \(i)")
    i += 1
} while i<10

print("================While Looop======================")

while i < 20 {
    print("while \(i)")
    i += 1
}

print("================For Looop======================")
 // Range operator
// 1. Closed Range (a...b)
// 1...5 both 1 and 5 are inclusive

// 2. Half Open Range (a..<b)
// 1..<5 include 1 and everything less than b


// 3. One Sided Range (a...)
// 1...
// ...10

//for(int i =1; i<=5;i++) {
//
//}

//value = 1
//value = 2
//value = 3
//value = 4
//value = 5
print("================Closed Range======================")
for value in 1...5 {
    print(value)
}
print("================Half Open Range======================")
for value in 1..<5 {
    print(value)
}

print("================One Sided Range======================")

let numbers = [1,2,3,4,5]
for number in numbers[1...] {
    print(number)
}

print("================Where keyword======================")

for i in 1...20 where i%3 == 0 {
    print(i)
}

print("================Where keyword======================")

for i in 1...5 {
    for j in i...5 {
        print("* ", terminator: "")
    }
    print("")
}





// Write one code which print only even value till 20
//      *
//     * *
//    * * *
//   * * * *

//: [Next](@next)

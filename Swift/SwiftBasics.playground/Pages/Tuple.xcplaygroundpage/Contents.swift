//: [Previous](@previous)

import Foundation

let tuple3: (String, Bool) = ("Madhur",false)

print(tuple3.0)
print(tuple3.first)


let tuple1 = (200, "page Not Found", "Please reload page")
print(tuple1.2)

let tuple2 = (statusCode: 200, message: "page Not Found", description: "Please reload page")
print(tuple2.statusCode)
print(tuple2.second)

let (statusCode, message, description) = (404, "Page Not Found", "Please reload page")
print(statusCode)

//: [Next](@next)

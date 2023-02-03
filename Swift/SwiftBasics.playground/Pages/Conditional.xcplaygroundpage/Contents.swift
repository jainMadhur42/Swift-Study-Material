//: [Previous](@previous)

import Foundation

let height = 12

if height > 45 {
    print("Height is greater than 45")
} else if height < 45 && height > 30 {
    print("Height is between 30 and 45")
} else {
    print("height is less than 30")
}

// Switch
switch height {
    
    case 45:
        print("Height is greater than 45")
        break;
    case 30:
        print("Height is between 30 and 45")
    case 12:
        print("height is less than 30")
    default:
        print(" I don't know")
}

let age = 31
switch age {
case 0...16:
    print("child")
case 17...30:
    print("Adult")
case 31...45:
    print("Mid-old")
case 45...60:
    print("Old")
default:
    print("Don't know")
}

let errocode = ("Auth fail",403)

switch errocode {
case ("Page not found",404):
    print("page not found")
case ("Auth fail",403):
    print("Auth fail")
default:
    print("don't know")
}



//: [Next](@next)

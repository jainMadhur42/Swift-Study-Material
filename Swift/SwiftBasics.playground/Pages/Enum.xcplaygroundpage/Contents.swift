//: [Previous](@previous)

import Foundation

// Enum
// An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.

//enum <Name> {
//    case <>
//    case <>
//    case <>
//    case <>
//}
// CaseIterable is optional it is only required when you want to iterate element of enum.

enum WeekDays: CaseIterable {
    case monday
    case tuesday
    case wednesday
    case Thureday
    case Friday
    case Saturday
    case sunday
}

var currentWeekDay = WeekDays.sunday
print(currentWeekDay)

currentWeekDay = .monday
print(currentWeekDay)

func printQoute(weekDay: WeekDays) {
    switch weekDay {
    case .monday:
        print("New morning to start work")
    case .tuesday:
        print("Become better from yesterday")
    case .wednesday:
        print("Waiting for weekend")
    case .Thureday:
        print("Some Random")
    case .Friday:
        print("Friday holiday motivation")
    case .Saturday:
        print("Give time to yourself")
    case .sunday:
        print("Family Day")
    }
}


printQoute(weekDay: .Thureday)
printQoute(weekDay: .sunday)


for weekday in WeekDays.allCases {
    print("weekday \(weekday)")
}


enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var barCode = Barcode.upc(1, 12345, 45687, 23)
barCode = .qrCode("Madhur Jain")



switch barCode {
case .upc(let number1, let number2, var number3, let number4):
    print("Upc Called with \(number1) \(number2) \(number3) \(number4)")
case .qrCode(let passCode):
    print("QR Code: \(passCode)")
}

enum Bravrage: Int {
    case tea = 0, coffe , greenTea
}

var bevrage = Bravrage(rawValue: 1)
print(bevrage)
//: [Next](@next)

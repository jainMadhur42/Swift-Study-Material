//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// Array
// Sets
// Dictionary: Collection of key value pair
// Tuple

// Array -> Collections of similar data type
//                  0, 1,2,3,4,5
var marks: [Int] = [10,8,9,5,6,4]

//0..<6

print("================Range======================")

for i in 0..<marks.count {
    print("\(marks[i]) at index \(i)")
}


print("================enumerated======================")


for (index, mark) in marks.enumerated() {
    
    print("\(index) at index \(mark)")
}

print("================For each======================")

for mark in marks {
    print(mark);
}

print("================Append function======================")

var names: [String] = []
names.append("Madhur") //0
names.append("Jain")   //1
names.append("Some")   //2
names.append("Random") // 3

for name in names {
    print(name)
}


print("================Modifing array ======================")
names[2] = "Bhavna"
names[3] = "Rupali"

for name in names {
    print(name)
}
// Remove
print("================Remove array ======================")
names.remove(at: 2)

for name in names {
    print(name)
}

print("================insert array ======================")
names.insert("Rakesh", at: 2)

for name in names {
    print(name)
}
print(names.isEmpty)

print("================Sort array ======================")

for name in names.sorted() {
    print(name)
}



// sum of all element in the array


// ====================== Sets ======================
// 1. Set just can store unique elements
var letters = Set<Character>()

print("================insert set ======================")
letters.insert("a")
letters.insert("a")
letters.insert("b")

print("Element in sets \(letters.count)")
print("Element in sets \(letters.isEmpty)")

print("================enumerated ======================")
for (index,element) in letters.enumerated() {
    print("\(element) at index \(index) ")
}

print("================ For in ======================")

for element in letters {
    print("\(element) ")
}

letters.insert("z")
letters.insert("s")
letters.insert("d")

print("================ Sorted in ======================")

for element in letters.sorted() {
    print(element)
}


print("================ Union======================")

let a: Set = [1, 3, 5, 7, 9]

let b: Set = [0, 2, 4, 6, 8]

let c: Set = [2, 3, 5, 7]

// b and c Union = 0,2,3,4,5,6,7,8
// Union create a set with all the value of sets but it repeat repeated value only once.
// for example 2 is 2times but it will come only 1 time

var union = b.union(c)


for element in union {
    print(element)
}

print("================ intersection======================")

// a and c intersection = 3, 5, 7
// it create set with the common value only.

var intersection = a.intersection(c)

for element in intersection {
    print(element)
}

print("================ Subtracting ======================")

// a and c subtraction =  1, 9
// it element intersection of a and c and return rest value of a.

var subtraction = a.subtracting(c)

for element in subtraction {
    print(element)
}

print("================ Symmetric difference ======================")

// a and c subtraction =  1, 9
// it eliminate intersection and return a set with rest other value.

var symmetricDifference = a.symmetricDifference(c)

for element in symmetricDifference {
    print(element)
}

// home work explore about isSubSet, isSuperSet, isStrictSubset, isisStrictSuperset




//: [Next](@next)

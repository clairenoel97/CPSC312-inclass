//
//  main.swift
//  Swift Basics Fun
//
//  Created by Gina Sprint on 8/30/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import Foundation

print("Hello, World!")

// one line comment
/*
 this is
 a
 multi line
 comment
 */

// MARK: - Variables
// every type in swift is an object, which means there are no primitives
var temperature: Int = 63
print(temperature)
// swift can infer types
var temperature2: Float = 73.7
// Int, Float, Double, Bool, Character, String, Array, Set, Dictionary
let buildingName = "Herak"
// let means constant variable
let labRoom = 223
print(buildingName)
// string interpolation
print("\(buildingName)\(labRoom)")
// task 1: declare two constants, one for your first name and one for your last name
// print on one line "gina sprint has 10 characters"
let firstName = "Gina"
let lastName = "Sprint"
let numChars = firstName.count + lastName.count
print("\(firstName) \(lastName) has \(numChars) characters")

// arrays
var food = ["eggs", "bacon", "bagels"]
print(food)
print(food[0])
print(food.count)
print(food.isEmpty)
// can grow or shrink in size
food.append("coffee")
print(food)
// task 2: try removing the first element
food.remove(at: 0)
print(food)

// random number
// throw a 6 sided die and save it in randNum
var randNum = arc4random_uniform(6) + 1
print(randNum)
var randNumAsInt = Int(randNum)

// MARK: - Conditionals
// if-else if-else
// switch
var x = 100
if x > 90 {
    print("x is greater than 90")
}

// MARK: - Optionals
// an optional is a variable that can either be nil or store a value
var myOptionalInt: Int? = nil
// to find out if an optional has a value or not, you need to "unwrap" it
// two ways to unwrap an optional
// 1. force unwrapping
// this is not best practice because it is unsafe
//myOptionalInt = 10
print(myOptionalInt)
//var myInt = myOptionalInt!
//print(myInt)
// 2. optional binding
// if there is a value in the optional, assign it to a temporary variable and use that variable safely
if let myInt2 = myOptionalInt {
    // can safely use myInt2 the Int
    print(myInt2)
}
else {
    print("myOptionalInt is nil")
}

// word of caution: don't use this....
if myOptionalInt != nil {
    // force unwrap myOptionalInt in here
}
//
//// warm up task 9/4
//var names = ["Joe", "Jane", "Mary"]
//print(names)
//print(names.count)
//names.append("Spike")
//print(names)
//print("Please enter a name to remove: ", terminator: "")
//let optionalInputString = readLine()
//print(optionalInputString)
//if let inputString = optionalInputString {
//    print("Going to try and remove \(inputString)")
//    let optionalIndex = names.index(of: inputString)
//    if let index = optionalIndex {
//        names.remove(at: index)
//        print("Success!")
//    }
//}
//print(names)

// MARK: - Loops
// in swift we don't have a traditional C style for loop
// for (int i = 0; i < 10; i++)
// for in loop
for i in 0..<10 {
    print(i, terminator: "")
}
// close range 0...10 inclusive of the end value
print()

// 2 other loops we have in swift
// 1. while loop
// 2. repeat-while which is just like a do-while

// task: solve this simple problem using each of the 3 loops
// print the first 20 even numbers separated by spaces
// 2, 4, 6...

x = 2
while x <= 40 {
    print(x, terminator: " ")
    x += 2
}
print()

// MARK: - Functions
// no parameters no return value
func sayHello() {
    print("Hello!")
}

sayHello()

// one parameter no return value
// message is the "internal parameter name"
// without an external parameter name, the internal name
// is also the external name (AKA argument label)
func say(message: String) {
    print(message)
}

say(message: "Hola!")

// write a funciton to compute the area of a circle
// withRadius is the external param name
// radius is the internal param name
func computeCircleArea(withRadius radius: Double) {
    let area = Double.pi * pow(radius, 2.0)
    print(area)
}

computeCircleArea(withRadius: 5.0)

// parameters are let variables, read only...
// if you don't want to specify an external param name,
// you can use _ "anonymous variable"
func computeCircleArea2(_ radius: Double) {
    let area = Double.pi * pow(radius, 2.0)
    print(area)
}

computeCircleArea2(5.0)

// unless you are passing an object of type class, then all
// arguments are pass by value
// declare a parameter as inout to make it pass by reference
func increment(value: inout Int, by incrementValue: Int) {
        value += incrementValue // updates memory in the calling code
}

var y = 5
increment(value: &y, by: 10)
print(y)

// MARK: - Strings
// A String is a sequence of Characters
// A Character is one or more Unicodes
// There are over 130,000+ Unicode values
// Swift fully Unicode compliant
// basics of Strings
var unicorn = "🦄🐥"
var 🐥 = "chick"
print(unicorn, 🐥)
// we have string concatenation +, relational operators < >, <=,...
// equality operators == !=
// there is a count property
// you cannot index into a string using [ ] and an integer
// instead you need a String.Index object
var course = "CPSC315"
print(course[course.startIndex])
// say we want to print the 3...
let indexOf4thCharacter = course.index(course.startIndex, offsetBy: 4)
print(course[indexOf4thCharacter])

// task: write/call a function that accepts two strings and
// returns true if their last character is the same
// ex: gonzaga zebra would return true
// ex: gonzaga classroom would return false
func sameLastCharacter(_ string1: String, _ string2: String) -> Bool {
    let lastIndex1 = string1.index(before: string1.endIndex)
    let lastIndex2 = string2.index(before: string2.endIndex)
    
    return string1[lastIndex1] == string2[lastIndex2]
}

print(sameLastCharacter("gonzaga", "zebra"))
print(sameLastCharacter("gonzaga", "classroom"))

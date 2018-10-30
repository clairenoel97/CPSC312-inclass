//
//  main.swift
//  More Swift Fun
//
//  Created by Gina Sprint on 10/2/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import Foundation

print("Hello, World!")

// MARK: - Guard
// use guard when you want an early exit from a function
// when a condition fails
// useful to prevent large nested if statements
// when used with optional binding, your variables persist outside the scope of the guard

// MARK: - Error handling
// when a programmer anticipates something might go wrong
// they will "throw" an error
// and require calling code to acknowledge an error might be thrown
// lets define our own error!!
enum UserInputError: Error {
    case invalidInteger
    case invalidPositiveInteger
}
// instead of returning -1, we want to throw an UserInputError
// if a function throws an error, add the throws clause after the ()

func getPositiveInteger() throws -> Int {
    print("Enter an integer: ")
    guard let stringValue = readLine(), let intValue = Int(stringValue), intValue > 0 else {
        throw UserInputError.invalidPositiveInteger
    }
    // stringValue and intValue can be used here!

    return intValue
}

// we need to add "try" to a call to code that can throw and error
// we have two options for handling errors
// try? will assign nil to value if an exception is thrown
// do { } catch { } block

//let value = try? getPositiveInteger()
//do {
//    let value = try getPositiveInteger()
//    print(value)
//}
//catch UserInputError.invalidPositiveInteger {
//    print("Couldn't get a positive int from the user")
//}

//func getPositiveInteger() -> Int {
//    print("Enter an integer: ")
//    if let stringValue = readLine() {
//        if let intValue = Int(stringValue) {
//            if intValue > 0 {
//                return intValue
//            }
//        }
//    }
//    return -1
//}


// MARK: - Closures ... dun dun dun!!!
// for more info see ADS 5.1
// a function is a first class citizen in Swift
// this means you can use a function anywhere you can use a value
// just like values, functions have types
// examples
// () -> Void           the type of all functions that accept no arguments and don't return a value
// the type is based on the function's signature
// () -> Int
// (Double) -> (Double)
// ([String], Int) -> (Double)
// (Int, Double, Float) -> ((Double, Int)) // this is a tuple
// a function that is defined inside the body of another function is called a local function
// reasons why you might do this:
// - defining a helper function that is only used in this function
// - to keep the code that is highly cohesive near each other for readability
// - function is only going to be called one time
// - function is going to passed into another function as an argument
// a function that has no name is called an anonymous function (AKA CLOSURE)
// closure: a piece of functionality that you can pass around in your code to be executed at a later time
// note: closures "capture" their external references, more on this later...
// EXAMPLE

func sayHello() {
    print("Hello")
}

// the type of sayHello() is what? () -> Void
// so lets define another funciton that can execute any () -> Void type functions
func executeVoidFunction(f: () -> Void) {
    // execute f
    f()
}

// call executeVoidFunction(f:) passing in sayHello
executeVoidFunction(f: sayHello)
// call executeVoidFunctions(f:) passing in a closure
executeVoidFunction(f: { () -> Void in
    // closures start with { and end with }
    // on the first line we specify our parameter list, our return type and the word in to separate the "header" from the body
    print("Goodbye")
})

// swift has a lot of "syntatic sugar" "shorthand" for closures
executeVoidFunction {
    print("Good day")
}
// more on this later

// another example!
// a function that accepts and calls a function of type (Int) -> Int
func transformRandomInteger(f: (Int) -> Int) {
    let randNum = Int.random(in: 1...10)
    let transformedRandNum = f(randNum)
    print(randNum, transformedRandNum)
}

// lets call transformRandomInteger() passing in a closure that doubles a number
transformRandomInteger(f: { (value) -> Int in
    return value * 2
})

// task: call transformRandomInteger() passing in a closure that squares a number
transformRandomInteger { $0 * $0 }

// more on shorthand
// if the closure only has one line, you can omit the return word, swift will return whatever that one line evaluates to
// swift can infer type for the return value
// we can omit the parameter list and use general placeholders instead
// $0 can be used to refer to the first parameter
// $1 for the second ...
// trailing closure: a closure that is the last argument to a function call
// a trailing closure can be outside of the ()
// if the closure is the only argument, you don't need the ()

// closures are everywhere!
// ADS 5.1 closures with collection types (arrays)
// map, reduce, filter often written using closures
// some examples in iOS
// alertcontrollers use closures to execute code later
// like when the user clicks on an action
// timers use closures to execute code periodically
// LOTS MORE!!! they aren't going away

//
//  Book.swift
//  OOP Fun
//
//  Created by Gina Sprint on 9/4/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import Foundation

// define a Book class
// a protocol: a set of state (properties) and behavior (methods)
// that a class or a struct can promise to implement
// this is called "conforming" to a protocol
// like an interface in Java
// CustomStringConvertible is a protocol with one
// property in it: a String description
// like toString() the method in Java
//class Book: CustomStringConvertible {
//    // properties
//    var ISBN: String = ""
//    var title: String = ""
//    var author: String = ""
//    var numPages: Int = 0
//    // description is a computed property
//    var description: String {
//        return "\(title) by \(author)"
//    }
//
//    // an initializer is like a constructor
//    // if you initialize all values for properties at
//    // declaration time, swift gives you a default initializer
//    init(ISBN: String, title: String, author: String, numPages: Int) {
//        self.ISBN = ISBN
//        self.title = title
//        self.author = author
//        self.numPages = numPages
//    }
//    // when we add an initializer, we lose the default value initializer
//    // you might see init?() this is called a failable initializer
//    // if a initializer cannot initialize an object, it will return nil
//    // return optionals
//
//    // methods
//}

// structs are more powerful in swift than in C/C++
// its simpler to list the differences between classes and structs
// 1. classes support inheritance, structs do not
// 2. classes are reference types, structs are value types
// note: Double, Int, Float, Bool, String, Set, Array, Dictionary, etc.
// are all structs!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// 3. structs provide a default memberwise initializer, that classes do not
// 4. if you have a method in a struct that changes state, the method
// has to be labeled with mutating
struct Book: CustomStringConvertible {
    // properties
    var ISBN: String = ""
    var title: String = ""
    var author: String = ""
    var numPages: Int = 0
    // description is a computed property
    var description: String {
        return "\(title) by \(author)"
    }
    // property observer
    // you can monitor when a property gets updated
    // and execute code accordingly
    var price: Double = 0.0 {
        willSet {
            // this code executes right before price is updated with newValue
            print("\(price) is about to be set to \(newValue)")
        }
        
        didSet {
            // this code executes right after price is updated
            // can still access the oldValue
            print("price is now \(price) before it was \(oldValue)")
            
        }
    }
    var genre: Genre = .nonfiction
    
    // when we add an initializer, we lose the default value initializer
    // you might see init?() this is called a failable initializer
    // if a initializer cannot initialize an object, it will return nil
    // return optionals
    
    // methods
    mutating func discountPrice(withPercent: Double) {
        // task: update price based on withPercent
        // try to build
        price = (100.0 - withPercent) / 100.0 * price
    }
}

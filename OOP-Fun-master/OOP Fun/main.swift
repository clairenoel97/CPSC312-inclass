//
//  main.swift
//  OOP Fun
//
//  Created by Gina Sprint on 9/4/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import Foundation

// class: a collection of state and behavior that completely describes something
// state: properties
// behavior: methods
// object: instance of a class

// there are 3 types of objects in Swift
// 1. class
// 2. struct
// 3. enum

// classes are pass by reference!!

func bookClassDriver() {
    var book1 = Book(ISBN: "30495-3452", title: "Harry Potter and the Sorcerer's Stone", author: "JK Rowling", numPages: 345, price: 12.99, genre: .fantasy)
    print(book1)
    
    // declare another Book reference to demonstrate
    // that classes are reference types
    var book2 = book1 // if Book is a struct, this makes a copy
    book2.title = "Harry Potter and the Chamber of Secrets"
    print(book1)
    print(book2)
    
    print(book1.price)
    book1.discountPrice(withPercent: 20.0)
    print(book1.price)
    
    // task: using a switch statement, print out info for book1's genre
    switch book1.genre {
    case .fantasy:
        print("This is a fantasy book")
        //fallthrough
    case .nonfiction:
        print("This is a nonfiction book")
    default:
        print("This is a biography book")
    }
    // switch statement cases must be exhaustive
    // all cases have an implicit break in them
    // if you want fall through behavior this a fallthrough keyword
    // enums and switches go hand in hand
    // enum cases can have associated values that you can extract
    // in a case statement in a switch
    // cases can support ranges :)
    
}

bookClassDriver()



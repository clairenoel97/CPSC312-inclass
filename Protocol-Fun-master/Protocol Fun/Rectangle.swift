//
//  Rectangle.swift
//  Protocol Fun
//
//  Created by Gina Sprint on 9/13/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import Foundation

struct Rectangle: CustomStringConvertible, Shape {
    // task: define a Rectangle struct that conforms to Shape
    
    var length: Double
    var width: Double
    var description: String {
        return "Rectangle with length \(length) and width \(width)"
    }
    
    init(length: Double, width: Double) {
        self.length = length
        self.width = width
    }
    
    init() {
        self.length = 1.0
        self.width = 1.0
    }
    
    func computeArea() -> Double {
        return length * width
    }
    
    func computePerimeter() -> Double {
        return 2 * length + 2 * width
    }
}


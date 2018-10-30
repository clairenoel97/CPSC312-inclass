//
//  main.swift
//  Protocol Fun
//
//  Created by Gina Sprint on 9/6/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import Foundation

print("Hello, World!")

Point.pointTester()
Circle.circleTester()

func shapeTester() {
    // declare some Circles and Rectangles
    // then add them to a Shape array
    // Example of polymorphism
    // iterate through the array and print out each shape's
    // area and perimeter
    var circle1 = Circle()
    var circle2 = Circle(center: Point(x: 1.0, y: 2.0), radius: 10.0)
    var rectangle1 = Rectangle()
    var rectangle2 = Rectangle(length: 5.0, width: 10.0)
    var shapes = [Shape]()
    
    shapes.append(circle1)
    shapes.append(circle2)
    shapes.append(rectangle1)
    shapes.append(rectangle2)
    print(shapes)
    
    for shape in shapes {
        print(shape, shape.computeArea(), shape.computePerimeter())
    }
    
}

shapeTester()


//
//  ViewController.swift
//  Auto Layout Fun
//
//  Created by Gina Sprint on 10/4/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import UIKit

// MARK: - Autolayout Notes
// so far, we have been hardcoding the positions of our views
// a view is defined by a rectangle
// the rectangle has alot of attributes
// origin: this is the upper left corner of the view and it positions the view in it superview's bounds
// size: this is the width and the height of the view
// point: is a relative unit of measure
// the number of pixels in a point depends on the resolution of the screen
// demo: add button to center of screen using alignment crosshairs, view the app for
// various screens and for landscape orientation
// open the size inspector to see the values for X, Y, width, height do not change
// auto layout will determine position and size at runtime based on the size of the screen
// auto layout requires that every view have at least four constraints
// a constraint a relationship between views that can be determined at runtime
// 4 constraints
// position: x and y constraint (horizontal and a vertical)
// size: w and height constraints
// views have intrinsic content size values that can be used as implicit constraints for width and height
// makes our job easier if we only have to define constraints for position
// demo: add alignment constraints for the button to put it centered horizontally and vertically in its container
// what is a container view? a view that contains other views
// lets draw a picture
// demo: add two buttons. add a top constraint to pin it 16 points below the safe area
// add a top constraint for the second button to pin it 16 points below the previous button
// select both and add a constraints to align horizontally in container
// demo: add three buttons in a row horizontally. select all three and add a top 16 point constraint
// for the left one add a leading constraint for 16 points
// for the right one add a trailing constraint for 16 points
// for the middle one add a leading and trailing constraint for 4 points
// get horiztonal ambiguous warning
// if the screen grows or shrink in size, there has to be a rule for which view gets to occupy the extra space or which view is the first to shrink in size
// select all three buttons and add constraint to have equal widths
// warning goes away
// demo: add three more buttons. select all and embed in stack view
// set the stack views top constraint to be 16 below the nearest neighbor
// set the stack views leading and trailing constraints to be 16
// In the attribute inspector for the stack view, set the distribution to fill equally (so we don't have the horizontally ambiguous warning) and set the spacing to 4

// 10/9/18
// so far, when we used stack view we specified "fill equally" for our distribution
// but what if we want say a button to be twice as big as another button?
// 2 ways to do this
// 1. specifying a multiplier as part of a equal height/width constraint
// this is done in ADS book, do the calculator lab at the end of the auto layout section
// 2. specifying content hugging and compression resistance priorities
// suppose we have two views and we want to specify which one should fill extra space and which one should shrink if we lose space
// content hugging priority: this is like a rubber band that keeps a view "hugging" its intrinsic content size
// the higher the CHP the more likely the view will stay small
// compression resistance priority: the higher the CRP the more likely the view will "resist" getting smaller
// demo

// task: create a grid of 3x3 buttons that are all of equal height and equal width
// then wire up one action for all 9 buttons that simply prints "button pressed"

class ViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        print("button pressed: \(sender.tag)")
        // we want to figure out which button is pressed
        // 2 ways
        // using tags: every view has a tag property where we can store some information like an integer value
        if let index = buttons.index(of: sender) {
            print(index)
        }
        
    }

}


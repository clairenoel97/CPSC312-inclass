//
//  ViewController.swift
//  Text Input Fun
//
//  Created by Gina Sprint on 10/11/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import UIKit

// MARK: - First Responder Status
// when you tap the text field, it becomes the keyboard's first responder
// only way to get rid of the keyboard is to have the text field "resign as first responder"
// where and when to do this?
// 1. tap on the background view
// to do this, we need a UITapGestureRecognizer
// 2. user presses the return key
// to do this, we can use an action OR we can use a delegate
// MARK: - Delegation
// delegation is a design pattern
// target action is used for a single callback
// delegation is an OOP approach to callbacks (event handling)
// example for text field
// UITextField has a UITextFieldDelegate protocol that it's delegate can conform to
// in UITextFieldDelegate there are several optional callback methods we can implement
// callbacks that inform the delegate about information changes
// callbacks that ask the delegate what to do (return Bool)
// textFieldShouldReturn() -> Bool
// steps for delegation
// 1. have the view controller conform to the delegate protocol
// 2. let the text field know that ViewController is now its delegate
// 3. provide implementations for the callbacks in the delegate protocol the view controller is interested in
// task: provide an implementation for textFieldShouldReturn()
// resign as first responder

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
        if let text = sender.text {
            if text != "" {
                label.text = text
            }
            else {
                label.text = "Enter text below"
            }
            
        }
    }
    
    // action for when the TapGestureRecognizer recognizes a tap
    @IBAction func backgroundTapped(_ sender: UITapGestureRecognizer) {
        print("background tapped")
        textField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}


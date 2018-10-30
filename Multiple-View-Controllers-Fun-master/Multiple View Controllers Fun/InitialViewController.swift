//
//  ViewController.swift
//  Multiple View Controllers Fun
//
//  Created by Gina Sprint on 10/11/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import UIKit

// MARK: - Multiple View Controllers
// so far, all of our apps have had one screen
// recall: 1 scene in IB = 1 screen in the app = managed by 1 view controller

// MARK: - Segue
// a segue is a transition from one view controller to the next
// two ways to trigger a segue
// automatic (let IB handle)
// manual (we'll trigger in the swift code)

// MARK: - Navigation and TabBar Controllers
// we learned how to setup our segues manually, which is nice for learning
// for common segue workflows, like clicking on an item in a list brings you to a detail page for that item, iOS provides controllers we can use to quickly code up such user workflows
// 1. navigation controller
// 2. tab bar controller


class InitialViewController: UIViewController {
    @IBOutlet var usernameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // we want to pass the username from the text field to the second view controller
    // the prepare(for segue): callback is executed whenever a segue is about to occur
    // you pass data into the destination view controller here
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // sender is the view that triggered this segue (if there is one)
        // segue has three important properties
        // source: this is the instigating view controller
        // destination: this is the new view controller
        // identifier: this is the string you may have set up in IB (storyboard)
        if let identifier = segue.identifier {
            if identifier == "automaticSegue" || identifier == "manualSegue" {
                // we want to downcast using as? the destination general UIViewController to a specific subclass SecondViewController
                if let secondVC = segue.destination as? SecondViewController {
                    // set a username property in secondVC
                    // task: take it from here
                    // get the username from the textfield
                    if let username = usernameTextField.text {
                        secondVC.username = username
                    }
                }
            }
        }
    }
    
    // when the user presses log out, we want to exit
    // second view controller and unwind to this method
    // in initial view controller
    @IBAction func unwindToInitialVC(segue: UIStoryboardSegue) {
        print("unwinding to initial view controller")
    }
    
    @IBAction func manualSegueButtonPressed(_ sender: UIButton) {
        // trigger a manual segue
        print("triggering manual segue")
        // call performSegue(withIdentifier:sender:)
        performSegue(withIdentifier: "manualSegue", sender: self)
    }
    
    // one more segue related method to show you
    // only called for an automatic IB segue
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        // we don't want to segue to second view controller
        // if the user's credentials arent correct
        // return true if the user enters a username
        // return false if they don't enter a username
        guard let username = usernameTextField.text else {
            return false
        }
        guard username != "" else {
            return false
        }
        // we have a username with at least one character
        return true
    }
    
}


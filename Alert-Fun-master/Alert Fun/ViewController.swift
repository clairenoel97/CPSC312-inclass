//
//  ViewController.swift
//  Alert Fun
//
//  Created by Gina Sprint on 9/25/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    
    @IBAction func echoBackPressed(_ sender: UIButton) {
        print("echo back")
        // get text from the TextField
        if let text = textField.text {
            print(text)
            // we want to show an alert or an action sheet
            // when the user presses echo back
            // actionSheet: typically used when the user has performed an action and they expect a dialog (ex: deleting an item and the action sheet is going to ask them to confirm the delete)
            // alert: typically used when the user does not expect it, maybe something has gone wrong in the app and you need to let the user know or get their choice
            // use a UIAlertController object to show an action sheet or an alert
            var alertController = UIAlertController(title: "Echo Back", message: text, preferredStyle: .actionSheet)
            // add an action to the actionsheet/alert
            // we will add one for "Okay"
            alertController.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (action) -> Void in
                print("User just pressed okay")
            }))
            // we will talk about handlers and closures next week :)
            // present the actionsheet/alert via the present() function
            present(alertController, animated: true, completion: { () -> Void in
                print("Just finished showing the alert dialog to the user")
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // task: in IB, add a TextField to your app, center horizontally and make it as wide as the safe area margins
    // add a button that says "Echo Back"
    // add an outlet for the TextField
    // add an action for button
    // when the button is pressed simply display a log message

}


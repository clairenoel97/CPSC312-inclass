//
//  SecondViewController.swift
//  Multiple View Controllers Fun
//
//  Created by Gina Sprint on 10/11/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var username: String? = nil
    
    @IBOutlet var welcomeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // task: set the welcome label to show "Welcome, username"
        welcomeLabel.text = "Welcome, anonymous"
        if let name = username {
            if name != "" {
                welcomeLabel.text = "Welcome, \(name)"
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

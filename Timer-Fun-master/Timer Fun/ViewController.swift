//
//  ViewController.swift
//  Timer Fun
//
//  Created by Gina Sprint on 10/4/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Timer
    // use the Timer class to schedule code (a closure) to execute every so often
    // two types of timers
    // non-repeating
    // repeating: use invalidate() method to stop the a repeating timer
    var timer: Timer? = nil
    // task: add a property observer for seconds that updates the label whenever seconds is changed
    // task: we want to stop the timer on pause on reset
    // task: we want to reset seconds to 0 on reset
    var seconds = 0 {
        didSet {
            secondsLabel.text = "\(seconds)"
        }
    }
    @IBOutlet var secondsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) -> Void in
            // we want to update a property that keeps track of the number of elapsed seconds
            self.seconds += 1
            // recall on Tuesday, I said closures "capture" external references
            // closures execute later... perhaps after variables they reference have been deallocated...
            // to prevent your program crashing because memory has been deallocated when you refer it in your closure, closures keep those external variables in scope (in memory)
            // fully qualify our external reference names
        })
    }

    @IBAction func startPressed(_ sender: UIButton) {
        print("start pressed")
        if timer == nil {
            startTimer()
        }
    }
    
    @IBAction func pausePressed(_ sender: UIButton) {
        print("pause pressed")
        timer?.invalidate()
        timer = nil
    }
    
    @IBAction func resetPressed(_ sender: UIButton) {
        print("reset pressed")
        timer?.invalidate()
        timer = nil
        seconds = 0
        
    }
}


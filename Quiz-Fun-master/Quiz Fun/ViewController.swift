//
//  ViewController.swift
//  Quiz Fun
//
//  Created by Gina Sprint on 9/20/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
// using <div>Icons made by <a href="https://www.flaticon.com/authors/vectors-market" title="Vectors Market">Vectors Market</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>

import UIKit

// MARK: - Project Structure
// First, the folders in Xcode are not folders
// they are called groups
// changes to groups do not change folders on the file system
// - Quiz Fun group
// -- AppDelegate.swift: contains code that acts as the middleman between your app and the OS
// -- ViewController.swift: this file! part of the MVC (model view controller) design pattern. more on this later....
// -- Main.storyboard: this is an archive of view objects that are edited by Interface Builder (IB)
// -- Assets.xcassets: this is a collection of assets/resources for your app e.g. images, sounds, etc.
// -- LaunchScreen.storyboard: when an app is first launched there is a "launch screen" AKA loading screen AKA splash screen that shows
// -- Info.plist: a "property list" file. a dictionary of important info about your app
// -- Android: like AndroidManifest.xml
// - Products
// -- Quiz Fun.app: your app's binary executable

// MARK: - MVC Notes
// Design pattern: a reusable solution to a common software engineering problem
// model view controller design pattern is often used for apps/programs that have a GUI
// Model layer: stores and serves data for your app
// example: Quiz object that provides quiz questions and quiz answers
// View layer: manages the views (part of your GUI) for your app
// example: Main.storyboard file, we will put labels and buttons in it for our quiz game
// Controller layer: middleman between the Model layer and the View layer... prepare data for displaying by the view and handle user interactions with the view (events)
// example: ViewController.swift will get quiz questions from the Quiz struct and handle button presses in the view layer
// not direct communication between model and view

class ViewController: UIViewController {
    // ViewController is a subclass of UIViewController
    var quizModel = QuizModel()

    // MARK: - Connections
    // so we have some views in our View layer (Main.storyboard) and need to write some code that does stuff when the user interacts with them
    // connections are used for two objects to communicate
    // for example: user clicks show answer button, then ViewController.swift should execute code to query our model for the answer, then update the answerLabel in the view layer
    
    // references to our UILabels
    @IBOutlet var questionLabel: UILabel!
    // @IBOutlet tells Xcode this property references
    // an object in Interface Builder (e.g. Main.storyboard)
    // UILabel! this type is a automatically unwrapped optional
    // an open circle in the margin which means an invalid connection
    // a closed circle would mean a valid connection
    @IBOutlet var answerLabel: UILabel!
    
    // we need to define "actions" for our buttons
    // when a button a pressed, an action (method) should
    // execute
    @IBAction func nextQuestionPressed(_ sender: UIButton) {
        // this is an example of iOS's target-action design pattern
        // ViewController is the target
        // nextQuestionPressed() is the action
        print("next question was pressed")
        showAnswer()
    }
    
    @IBAction func showAnswerPressed(_ sender: UIButton) {
        print("show answer pressed")
        let answer = quizModel.getCurrentAnswer()
        answerLabel.text = answer
    }
    
    func showAnswer() {
        let question = quizModel.getNextQuestion()
        questionLabel.text = question
        answerLabel.text = "<Answer>"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // this method is called when the ViewController's parent view object has been loaded into memory
        // but has not yet been displayed on the screen
        print("Hello from viewDidLoad()")
        
        // we need to set the questionLabel to show the first question
        showAnswer()
        
    }


}


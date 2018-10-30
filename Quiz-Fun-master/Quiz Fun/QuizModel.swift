//
//  QuizModel.swift
//  Quiz Fun
//
//  Created by Gina Sprint on 9/20/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import Foundation

struct QuizModel {
    // use parallel arrays for our questions and their answers
    private let questions: [String]
    private let answers: [String]
    private var currentQuestionIndex: Int
    
    init() {
        questions = ["What is our mascot?", "Where is GU?", "What room are we in?"]
        answers = ["Spike", "Spokane", "223"]
        currentQuestionIndex = -1
    }
    
    // MARK: - Access Modifiers
    // control access to state and behavior
    // internal: accessible anywhere in this app or framework
    // private: only accessible within this object
    // private(set): accessible (view only) anywhere in the app or framework but only writable within this object
    // fileprivate: accessible only within this source file
    // public: used by frameworks
    // open: used by frameworks
    
    // API: application programming interface
    // expose limited state and functionality
    // "encapsulate" things that the outside world shouldn't see
    
    mutating func getNextQuestion() -> String {
        currentQuestionIndex += 1
        // what if now currentQuestionIndex is beyond the last valid index of questions and answers?
        currentQuestionIndex %= questions.count
        return questions[currentQuestionIndex]
    }
    
    func getCurrentAnswer() -> String {
        return answers[currentQuestionIndex]
    }
}

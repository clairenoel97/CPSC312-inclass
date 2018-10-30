//
//  Lawyer.swift
//  Inheritance Fun
//
//  Created by Gina Sprint on 9/18/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import Foundation

class Lawyer: Employee {
    var stockOptions: Int
    
    override var description: String {
        return "\(super.description). I'm a Lawyer and I have \(stockOptions) stock options"
    }
    
    init(name: String, stockOptions: Int) {
        self.stockOptions = stockOptions
        // call the super class init() AFTER
        // you have initialized all properties for this subclass
        super.init(name: name)
        self.salary += 30_000
    }
    
    override func raise() {
        self.stockOptions += 10
    }
}

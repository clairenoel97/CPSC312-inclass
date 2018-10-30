//
//  Accountant.swift
//  Inheritance Fun
//
//  Created by Gina Sprint on 9/18/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import Foundation

class Accountant: Employee {
    var parkingAllowance: Double
    
    override var description: String {
        return "\(super.description). I'm an Accountant and I have $\(parkingAllowance) for a parking allowance"
    }
    
    init(name: String, parkingAllowance: Double) {
        self.parkingAllowance = parkingAllowance
        // call the super class init() AFTER
        // you have initialized all properties for this subclass
        super.init(name: name)
    }
    
    override func raise() {
        self.salary += 5_000
    }
}

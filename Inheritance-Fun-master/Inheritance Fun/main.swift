//
//  main.swift
//  Inheritance Fun
//
//  Created by Gina Sprint on 9/13/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import Foundation

print("Hello, World!")

// inheritance: an OOP principle where you can define a hierarchical relationship amongst classes
// a base class AKA super class AKA parent class
// a derived class AKA sub class AKA child class
// a sub class inherits the state and behavior from a super class
// in swift, structs do not support inheritance
// in swift, there is no universal base class
// for example, there's no Object like there is in Java
// use the keyword super to refer to a member of the super class
// use the keyword override to override behavior or state in a sub class

func employeeTester() {
    var employees: [Employee] = []
    employees.append(Programmer(name: "Ima Nerd", busPass: true))
    employees.append(Programmer(name: "Spike the Bulldog", busPass: false))
    employees.append(Lawyer(name: "Kenny Dewitt", stockOptions: 10))
    employees.append(Accountant(name: "Hal E. Luya", parkingAllowance: 17.00))
    // TODO: add remaining 4 employees
    
    for emp in employees {
        print(emp)
        emp.raise()
    }
    print("\nAfter raising employeee salaries\n")
    for emp in employees {
        print(emp)
    }
}
employeeTester()


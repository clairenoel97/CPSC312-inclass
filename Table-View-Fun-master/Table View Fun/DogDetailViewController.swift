//
//  DogDetailViewController.swift
//  Table View Fun
//
//  Created by Gina Sprint on 10/23/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import UIKit

class DogDetailViewController: UIViewController {
    
    // add a property so the DogTableViewController can pass in a Dog
    // this is the Dog to show the editable details for
    var dog: Dog? = nil

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var breedTextField: UITextField!
    // MARK: LAB #21
    @IBOutlet var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let dog = dog {
            // TODO: update the view to show this dog's name and breed
            nameTextField.text = dog.name
            breedTextField.text = dog.breed
            // MARK: LAB #21
            imageView.image = UIImage(named: dog.imageName)
        }
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // if its SaveUnwindSegue, grab the values in the text fields and update the dog
        if let identifier = segue.identifier {
            if identifier == "SaveUnwindSegue" {
                if let name = nameTextField.text, let breed = breedTextField.text {
                    // what to do if one of the fields is empty??
                    if let dog = dog {
                        dog.name = name
                        dog.breed = breed
                    }
                    else {
                        // if dog is nil, then we are adding a new dog
                        // create a new dog to have name and breed from the text fields
                        // set the property dog to this new dog
                        let newDog = Dog(name: name, breed: breed)
                        self.dog = newDog
                        
                    }
                }
            }
        }
    }
    

}

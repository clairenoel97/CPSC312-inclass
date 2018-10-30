//
//  DogTableViewCell.swift
//  Table View Fun
//
//  Created by Gina Sprint on 10/18/18.
//  Copyright © 2018 Gina Sprint. All rights reserved.
//

import UIKit

class DogTableViewCell: UITableViewCell {
    
    // add outlets to our labels in our DogCell

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var breedLabel: UILabel!
    @IBOutlet var dogImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with dog: Dog) {
        // initialize the labels to show the dog information
        nameLabel.text = dog.name
        breedLabel.text = dog.breed
        
        // MARK: LAB #21
        // just going to hard code every table view cell's image view to show the same dog
        dogImageView.image = UIImage(named: dog.imageName)
        // note: set the image view's content mode attribute to "Aspect Fit"
        // depending on the size of your image, your table view cells might get really large
        // you can force the table view cell's height to be fixed so that the image view doesn't affect the size. change the table view's Row Height attribute (in the Size Inspector) to be 44 (or similar) and uncheck Automatic
    }

}

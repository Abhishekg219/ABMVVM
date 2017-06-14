//
//  CarTableViewCell.swift
//  InteractSwift
//
//  Created by Abhishek on 06/06/17.
//  Copyright © 2017 DREAM WORKS. All rights reserved.
//

import UIKit

class ABCarTableViewCell: UITableViewCell {


    /**
     imageview for showing car image
     */
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    /**
     For showing car model name
     */
    @IBOutlet weak var modelNameLabel: UILabel!
    
    /**
     for showing car make
     */
    @IBOutlet weak var makeNameLabel: UILabel!
    
    /**
     for showing HP of the car
     */
    @IBOutlet weak var horsepowerLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func configureCell(viewModel: ABCarViewModel) {
        
        modelNameLabel.text = viewModel.modelText
        makeNameLabel.text = viewModel.makeText
        horsepowerLabel.text = viewModel.horsepowerText
        backgroundImageView.image = UIImage.init(named: viewModel.photoName)
    }
}

//
//  RecepieTableViewCell.swift
//  CookApp
//
//  Created by JOAQUIN DIAZ RAMIREZ on 28/11/18.
//  Copyright © 2018 JOAQUIN DIAZ RAMIREZ. All rights reserved.
//

import UIKit

class RecepieTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblIngredients:UILabel?
    @IBOutlet weak var lblTitle:UILabel?
    @IBOutlet weak var lblCreator:UILabel?
    @IBOutlet weak var imgRecepie:UIImageView?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

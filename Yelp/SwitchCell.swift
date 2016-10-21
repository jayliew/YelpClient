//
//  SwitchCell.swift
//  Yelp
//
//  Created by Jay Liew on 10/21/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class SwitchCell: UITableViewCell {

    // MARK: Outlets
    
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var onSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: Actions
    
    

}

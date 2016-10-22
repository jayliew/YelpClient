//
//  SwitchCell.swift
//  Yelp
//
//  Created by Jay Liew on 10/21/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol SwitchCellDelegate{
    @objc optional func switchCell(switchCell: SwitchCell, didChangeValue value: Bool)
}

class SwitchCell: UITableViewCell {

    // MARK: Outlets
    
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var onSwitch: UISwitch!
    
    weak var delegate: SwitchCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    // MARK: Actions
    
    @IBAction func onValueChanged(_ sender: AnyObject) {
        delegate?.switchCell?(switchCell: self, didChangeValue: onSwitch.isOn)
    }
    
}

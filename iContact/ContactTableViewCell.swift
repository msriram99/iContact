//
//  ContactTableViewCell.swift
//  iContact
//
//  Created by Himaja Motheram on 4/7/17.
//  Copyright © 2017 Sriram Motheram. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
       
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var LNameLbl1: UILabel!
    
    @IBOutlet weak var FNameLbl1: UILabel!
    @IBOutlet weak var PhNumLbl1: UILabel!
    @IBOutlet weak var EmailLbl1: UILabel!
    
}

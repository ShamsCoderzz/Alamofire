//
//  LabelCell.swift
//  AlamofireTask
//
//  Created by Muhammad Shams on 18/06/2020.
//  Copyright © 2020 Muhammad Shams. All rights reserved.
//

import UIKit

class LabelCell: UITableViewCell {
    
    @IBOutlet var img : UIImageView?
    @IBOutlet var name : UILabel!
    @IBOutlet var email : UILabel!
    @IBOutlet var des : UILabel!

    static var identifier = "cell"

    static func nib() -> UINib {
        return UINib(nibName: "LabelCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

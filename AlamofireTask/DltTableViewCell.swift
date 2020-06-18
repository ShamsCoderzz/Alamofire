//
//  DltTableViewCell.swift
//  AlamofireTask
//
//  Created by Muhammad Shams on 18/06/2020.
//  Copyright © 2020 Muhammad Shams. All rights reserved.
//

import UIKit

protocol ItemClickListner {

    func onClick(_ sender: UIButton)
}
class DltTableViewCell: UITableViewCell {
    
       @IBOutlet var email : UILabel!
       @IBOutlet var name : UILabel!
    
       var itemDelegate :  ItemClickListner?

       static var identifier = "dltCell"

       static func nib() -> UINib {
           return UINib(nibName: "DltTableViewCell", bundle: nil)
       }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func clickEvent(_ sender: UIButton) {
        itemDelegate?.onClick(sender)
    }
    
    
}

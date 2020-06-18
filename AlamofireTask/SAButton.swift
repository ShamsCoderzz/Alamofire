//
//  SAButton.swift
//  AlamofireTask
//
//  Created by Muhammad Shams on 10/06/2020.
//  Copyright © 2020 Muhammad Shams. All rights reserved.
//
import UIKit

class SAButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    private func setupButton() {
        backgroundColor     = UIColor.blue
     //   titleLabel?.font    = UIFont(name: "avenirNextCondensedDemiBold", size: 22)
        layer.cornerRadius  = frame.size.height/2
        clipsToBounds = true
        layer.masksToBounds = false
        setTitleColor(.white, for: .normal)
        
        
      //  layer.shadowColor 
    }
}

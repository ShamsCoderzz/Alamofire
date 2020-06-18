//
//  LayoutConstraint.swift
//  AlamofireTask
//
//  Created by Muhammad Shams on 14/06/2020.
//  Copyright © 2020 Muhammad Shams. All rights reserved.
//

import UIKit

@IBDesignable
class LayoutConstraint: NSLayoutConstraint {
    
    @IBInspectable var iPhone4s: CGFloat = 0.0 {
         didSet { deviceConstant(.i3_5Inch,value:iPhone4s) }
     }
     @IBInspectable var iPhoneSE: CGFloat = 0.0 {
         didSet { deviceConstant(.i4Inch,value:iPhoneSE) }
     }
     @IBInspectable var iPhone8: CGFloat = 0.0 {
         didSet { deviceConstant(.i4_7Inch,value:iPhone8) }
     }
     @IBInspectable var iPhone8Plus: CGFloat = 0.0 {
         didSet { deviceConstant(.i5_5Inch,value:iPhone8Plus) }
     }
     @IBInspectable var iPhone11Pro: CGFloat = 0.0 {
         didSet { deviceConstant(.i5_8Inch,value:iPhone11Pro) }
     }
     @IBInspectable var iPhone11: CGFloat = 0.0 {
         didSet { deviceConstant(.i6_1Inch,value:iPhone11) }
     }
     @IBInspectable var iPhone11Max: CGFloat = 0.0 {
         didSet { deviceConstant(.i6_5Inch,value:iPhone11Max) }
     }
     @IBInspectable var iPadMini: CGFloat = 0.0 {
         didSet { deviceConstant(.i7_9Inch,value:iPadMini) }
     }
     @IBInspectable var iPadPro9_7: CGFloat = 0.0 {
         didSet { deviceConstant(.i9_7Inch,value:iPadPro9_7) }
     }
     @IBInspectable var iPadPro10_5: CGFloat = 0.0 {
         didSet { deviceConstant(.i10_5Inch,value:iPadPro10_5) }
     }
     @IBInspectable var iPadPro12_9: CGFloat = 0.0 {
         didSet { deviceConstant(.i12_9Inch,value:iPadPro12_9) }
     }
     // Helpers
     open func deviceConstant(_ device:UIDeviceSize,value:CGFloat) {
         if deviceSize == device {
             constant = value
         }
     }
    
//    
//    @IBInspectable
//    var 📱4_3¨5: CGFloat = 0 {
//        didSet {
//            if UIScreen.main.bounds.maxY == 480 {
//                constant = 📱4_3¨5
//            }
//        }
//    }
//    
//    // iPhone SE
//    
//    @IBInspectable
//    var 📱SE_4¨0: CGFloat = 0 {
//        didSet {
//            if UIScreen.main.bounds.maxY == 568 {
//                constant = 📱SE_4¨0
//            }
//        }
//    }
//    
//    // iPhone 6, iPhone 6s, iPhone 7, iPhone 6 Plus, iPhone 6s Plus, iPhone 8
//    
//    @IBInspectable
//    var 📱4¨7_insh: CGFloat = 0 {
//        didSet {
//            if UIScreen.main.bounds.maxY == 667 {
//                constant = 📱4¨7_insh
//            }
//        }
//    }
//    
//    // iPhone 7 Plus, iPhone 8 Plus
//    
//    @IBInspectable
//    var 📱Plus_5¨5: CGFloat = 0 {
//        didSet {
//            if UIScreen.main.bounds.maxY == 736 {
//                constant = 📱Plus_5¨5
//            }
//        }
//    }
//    
//    // iPhone X,  iPhone XS
//    
//    @IBInspectable
//    var 📱X_5¨8: CGFloat = 0 {
//        didSet {
//            if UIScreen.main.bounds.maxY == 812 {
//                constant = 📱X_5¨8
//            }
//        }
//    }
//    
//    // iPhone XR
//    
//    @IBInspectable
//    var 📱XR_6¨1: CGFloat = 0 {
//        didSet {
//            if UIScreen.main.bounds.maxY == 896 {
//                constant = 📱XR_6¨1
//            }
//        }
//    }
//    
//    // iPhone XS Max, iPhone 11 Pro Max
//    
//    @IBInspectable
//    var 📱MAX_6¨5: CGFloat = 0 {
//        didSet {
//            if UIScreen.main.bounds.maxY == 896 {
//                constant = 📱MAX_6¨5
//            }
//        }
//    }
}

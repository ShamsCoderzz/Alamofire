//
//  SecondViewController.swift
//  AlamofireTask
//
//  Created by Muhammad Shams on 07/06/2020.
//  Copyright © 2020 Muhammad Shams. All rights reserved.
//

import UIKit

extension SecondViewController : UITextFieldDelegate {
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textFiledSubmit: SATextField!
    @IBOutlet weak var btnStackTopConstraint: LayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // apiManager.delegate = self
        self.textFiledSubmit.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification , object:nil)
             
             NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillHideNotification , object:nil)
             
             NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillChangeFrameNotification , object:nil)

        
             
             
        
        getAllShop()

    }
    
    // stop listning for kwyboard hide/show events
    deinit {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillChangeFrameNotification, object: nil)

    }
    
    
    @objc func keyboardWillShow (notification : Notification) {
        
        
         if let keyboardRectValue = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            //   let keyboardHeight = keyboardRectValue.height
            
            if notification.name == UIResponder.keyboardWillShowNotification ||
                notification.name == UIResponder.keyboardWillChangeFrameNotification {
                
                view.frame.origin.y = -keyboardRectValue.height
            }else {
                view.frame.origin.y = 0 
            }
            

        }
      //   print(notification.name.rawValue)

     }
    
    
    func getAllShop() {
       // apiManager.listOfShops()
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        
            let nextVC = self.storyboard?.instantiateViewController(identifier: "labelVC") as! LabelViewController
        //     nextVC.modalPresentationStyle = .currentContext  // custome transaction
             // present(nextVC,animated: true , completion : nil) // remove toolbar
             self.navigationController?.pushViewController(nextVC, animated: true)
    }
}



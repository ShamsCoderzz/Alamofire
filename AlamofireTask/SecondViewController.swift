//
//  SecondViewController.swift
//  AlamofireTask
//
//  Created by Muhammad Shams on 07/06/2020.
//  Copyright © 2020 Muhammad Shams. All rights reserved.
//

import UIKit


extension SecondViewController : ResponseDelegate {
     func SUCCESS(response: Any) {
           print(response)
       }
       
       func FAILURE(error: Any) {
           print(error)
       }
}

class SecondViewController: UIViewController {
    
    var apiManager = APIRequest()

    override func viewDidLoad() {
        super.viewDidLoad()
        apiManager.delegate = self
        
        getAllShop()

    }
    
    
    func getAllShop() {
        apiManager.listOfShops()
    }
    
}



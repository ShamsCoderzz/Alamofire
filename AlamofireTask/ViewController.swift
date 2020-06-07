//
//  ViewController.swift
//  AlamofireTask
//
//  Created by Muhammad Shams on 07/06/2020.
//  Copyright © 2020 Muhammad Shams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var apiManager = APIRequest()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        apiManager.delegate = self
        loginAPI()
    }
    
    @IBAction func btnClickListner(_ sender: Any) {
        
        HomeVC()
    }
    
    
    func HomeVC(){
        let nextVC = self.storyboard?.instantiateViewController(identifier: "secondView") as! SecondViewController
        self.navigationController?.pushViewController(nextVC, animated: true)
               
    }
    
    
    func loginAPI(){
        apiManager.LoginAPI(username: "shams", password: "password")
    }


}


extension ViewController : ResponseDelegate {
    func SUCCESS(response: String) {
      print(response)
    }
    
    func FAILURE(error: String) {
       print(error)
    }
    
    
}


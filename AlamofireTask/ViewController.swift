//
//  ViewController.swift
//  AlamofireTask
//
//  Created by Muhammad Shams on 07/06/2020.
//  Copyright © 2020 Muhammad Shams. All rights reserved.
//

import UIKit
import Alamofire

extension ViewController : ApiResponseDelegate {
    func onApiResponse(response: AFDataResponse<Any>, flag: String) {
        let JSON =  response.value as! NSDictionary
        
        print(JSON)
        print(response.value!)

    }
    
    
    func onFailure(error: String) {
        print(error)
    }
}

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        APIRequest.delegate = self
        loginAPI()
        
        
     
        
    }
    
    
 
    
    @IBAction func btnClickListner(_ sender: Any) {
        
        HomeVC()
    }
    
    
    func HomeVC(){
        let nextVC = self.storyboard?.instantiateViewController(identifier: "secondView") as! SecondViewController
   //     nextVC.modalPresentationStyle = .currentContext  // custome transaction
        // present(nextVC,animated: true , completion : nil) // remove toolbar 
        self.navigationController?.pushViewController(nextVC, animated: true)
               
    }
    
    
    func loginAPI(){
        
        let parameters  : [String: Any] = ["username" : "umer","password" : "password"]
        APIRequest.callAPI(url: Constants.baseUrl + Constants.login, header: Constants.header, params: parameters, flagType: Constants.login)
    }
}





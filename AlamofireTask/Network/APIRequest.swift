//
//  APIRequest.swift
//  AlamofireTask
//
//  Created by Muhammad Shams on 07/06/2020.
//  Copyright © 2020 Muhammad Shams. All rights reserved.
//

import Foundation
import Alamofire
import UIKit

protocol ResponseDelegate {
    func SUCCESS(response : String)
    func FAILURE(error: String)
}

struct APIRequest {
    
    let baseUrl = "http://ec2-18-206-250-232.compute-1.amazonaws.com:3000"
    var delegate : ResponseDelegate?
    


    func LoginAPI(username : String, password : String) {
        
        let loginURL = URL(string: "\(baseUrl)/user/login")!
        
        let params = [
            "username": username,
            "password": password
        ]
        
        
        AF.request(loginURL, method: .post, parameters: params).responseJSON { (response) in
            switch response.result {

            case .success:
                guard let json = response.value else { return }
//                self.delegate?.SUCCESS(response: json as! String)
                break
            case .failure(let error):
                self.delegate?.FAILURE(error: error.localizedDescription)
                break
            }
        }
    }
    
    
    func listOfShops() {
          
          let allShopURL = URL(string: "\(baseUrl)/label")!

          AF.request(allShopURL, method: .get).responseJSON { (response) in
              print(response.result)

              switch response.result {

              case .success:
                  guard let json = response.value else { return }
                     // self.delegate?.SUCCESS(response: json as! String)
                  break
              case .failure(let error):
                  self.delegate?.FAILURE(error: error.localizedDescription)
                  break
              }
          }
      }
    
}

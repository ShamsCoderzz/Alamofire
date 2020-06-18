//
//  LoginResponse.swift
//  AlamofireTask
//
//  Created by Muhammad Shams on 07/06/2020.
//  Copyright © 2020 Muhammad Shams. All rights reserved.
//

import Foundation
import Alamofire

struct LoginResponse : Codable {
    
    let message : String
    let response : String
    let status : Int
    
    
    static func setLoginData(response : AFDataResponse<Any>){   

        
        
    }

    
}

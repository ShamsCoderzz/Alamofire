//
//  LabelResponse.swift
//  AlamofireTask
//
//  Created by Muhammad Shams on 17/06/2020.
//  Copyright © 2020 Muhammad Shams. All rights reserved.
//

import Foundation

// MARK: - Welcome
struct LabelResponse : Codable {
    let status: Int
    let message: String
    let response: [Response]
}

// MARK: - Response
struct Response: Codable {
    
    let id, name , city : String
    let v: Int

    enum CodingKeys: String, CodingKey {
        case city
        case id = "_id"
        case name
        case v = "__v"
    }
}

//
//  CoinsDetailModel.swift
//  CoinsAPI
//
//  Created by Rachit Sharma on 31/07/2025.
//

import Foundation
struct CoinsDetailModel:Codable{
    var name: String
    var symbol: String
    var description: Description
    
}
struct Description:Codable{
    var text: String
    enum CodingKeys: String, CodingKey {
        case text = "en"
    }
}

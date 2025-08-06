//
//  Model.swift
//  CoinsAPI
//
//  Created by Rachit Sharma on 31/07/2025.
//

import Foundation

struct Coins:Codable,Identifiable,Hashable {
    var id:String
    var name:String
    var symbol:String
}

//
//  CoinApIError.swift
//  CoinsAPI
//
//  Created by Rachit Sharma on 31/07/2025.
//

import Foundation
enum CoinApIError: Error {
    case urlerror
    case invalidResponse
    case invalidData
    case decodingFailed
    case unknownerror
    
    var description: String {
        switch self {
            
        case .urlerror:
            "invalid url"
        case .invalidResponse:
            "invalid response"
        case .invalidData:
            "invalid data"
        case .decodingFailed:
            "decoding failed"
        case .unknownerror:
            "Unkonwn error"
        }
        
    }
}

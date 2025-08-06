//
//  MockDataTesting.swift
//  CoinsAPI
//
//  Created by Rachit Sharma on 03/08/2025.
//

import Foundation

class MockDataTesting:CoinsDataProtocol {
    var mockData:Data?
    func getCoinsData() async throws -> [Coins] {
        let coins = try JSONDecoder().decode([Coins].self, from:mockData ?? TestCoinData )
        return coins
    }
    
    func CoinsDetailView(id: String) async throws -> CoinsDetailModel? {
        return nil
    }
    
    
}

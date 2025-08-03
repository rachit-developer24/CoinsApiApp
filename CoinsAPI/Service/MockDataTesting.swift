//
//  MockDataTesting.swift
//  CoinsAPI
//
//  Created by Rachit Sharma on 03/08/2025.
//

import Foundation

class MockDataTesting:CoinsDataProtocol {
    func getCoinsData() async throws -> [Coins] {
        let bitcoin = [Coins(id: "1", name: "bitcoin", symbol: "btc")]
        return bitcoin
    }
    
    func CoinsDetailView(id: String) async throws -> CoinsDetailModel? {
        return nil
    }
    
    
}

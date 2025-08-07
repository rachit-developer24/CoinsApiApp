//
//  CoinsViewModel.swift
//  CoinsAPI
//
//  Created by Rachit Sharma on 31/07/2025.
//

import Foundation
class CoinsViewModel: ObservableObject {
    @Published var coins: [Coins] = []
    @Published var errorMessage: String?
    let Service:CoinsDataProtocol
    init(Service:CoinsDataProtocol){
        self.Service = Service
        Task {
            await fetchCoins()
        }
    }
    func fetchCoins() async {
        do{
            self.coins = try await Service.getCoinsData()
        }catch{
            if let error = error as? CoinApIError{
                self.errorMessage = error.description
            }else{
                self.errorMessage = error.localizedDescription
            }
        }
    }
}

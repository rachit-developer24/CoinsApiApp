//
//  CoinsViewModel.swift
//  CoinsAPI
//
//  Created by Rachit Sharma on 31/07/2025.
//

import Foundation
class CoinsViewModel: ObservableObject {
    @Published var coins: [Coins] = []
    let Service:ServiceModel
    init(Service:ServiceModel){
        self.Service = Service
        Task {
            await fetchCoins()
        }
    }
    func fetchCoins() async {
        do{
            self.coins = try await Service.getCoinsData()
        }catch{
            print(error.localizedDescription)
        }
    }
}

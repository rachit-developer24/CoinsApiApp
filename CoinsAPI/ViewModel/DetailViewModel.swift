//
//  DetailViewModel.swift
//  CoinsAPI
//
//  Created by Rachit Sharma on 31/07/2025.
//

import Foundation
class DetailViewModel:ObservableObject {
    @Published var Coindetail:CoinsDetailModel?
    let Details = ServiceModel()
    @Published var CoinId : String
    init(CoinId:String){
        self.CoinId = CoinId
    }
    
    func fetchDetail()async throws{
        do{ self.Coindetail = try await Details.CoinsDetailView(id: CoinId)}
        catch {
            print("error")
        }
       
    }
    
}

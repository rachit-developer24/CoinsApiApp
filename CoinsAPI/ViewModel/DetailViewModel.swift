//
//  DetailViewModel.swift
//  CoinsAPI
//
//  Created by Rachit Sharma on 31/07/2025.
//

import Foundation
class DetailViewModel:ObservableObject {
    @Published var Coindetail:CoinsDetailModel?
    let Details : CoinsDataProtocol
    @Published var CoinId : String
    init(CoinId:String,Details:CoinsDataProtocol){
        self.CoinId = CoinId
        self.Details = Details
    }
    
    func fetchDetail()async throws{
        do{ self.Coindetail = try await Details.CoinsDetailView(id: CoinId)}
        catch {
            print("error")
        }
       
    }
    
}

//
//  ServiceModel.swift
//  CoinsAPI
//
//  Created by Rachit Sharma on 31/07/2025.
//

import Foundation
protocol CoinsDataProtocol{
    func getCoinsData()async throws -> [Coins]
    func CoinsDetailView(id:String)async throws -> CoinsDetailModel?
}

protocol httpdownloader {
    func fetchdata<T:Decodable>(as type : T.Type , endpoint:String)async throws -> T
}

extension httpdownloader{
    func fetchdata<T:Decodable>(as type : T.Type , endpoint:String)async throws -> T{
        guard let url = URL(string: endpoint)else{
            throw CoinApIError.urlerror
        }
        let (data,response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse else{
            throw CoinApIError.invalidResponse
        }
        guard response.statusCode == 200 else{
            throw CoinApIError.invalidResponse
        }
        do{
            let details = try JSONDecoder().decode(T.self, from: data)
            return details
        }catch{
            throw CoinApIError.invalidData
        }
    }
}


class ServiceModel: CoinsDataProtocol, httpdownloader {
   
    func CoinsDetailView(id : String) async throws -> CoinsDetailModel?{
        let urlstring =  "https://api.coingecko.com/api/v3/coins/\(id)"
        if let catche = CoinDetailCache.shared.getCache(forkey: id){
            return catche
        }
     let details = try await  fetchdata(as: CoinsDetailModel.self, endpoint:urlstring )
        CoinDetailCache.shared.setCache(details, forkey: id)
        return details
        
    }
    
    func getCoinsData()async throws -> [Coins]{
        let urlstring =  "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=20&page=1&sparkline=false&locale=en"
        return  try await fetchdata(as: [Coins].self, endpoint: urlstring)
        
 }
}

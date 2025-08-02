//
//  CoinDetailCache.swift
//  CoinsAPI
//
//  Created by Rachit Sharma on 02/08/2025.
//

import Foundation
class CoinDetailCache{
    static let shared = CoinDetailCache()
    let cache = NSCache<NSString,NSData>()
    init(){}
    func setCache(_ coindetails : CoinsDetailModel , forkey key:String){
        guard let data = try? JSONEncoder().encode(coindetails) else {return}
        cache.setObject(data as NSData, forKey: key as NSString)
    }
    
    func getCache(forkey key:String)-> CoinsDetailModel?{
        guard  let data = cache.object(forKey: key as NSString) as? Data else {return nil}
        return try? JSONDecoder().decode(CoinsDetailModel.self, from: data)
    }
}

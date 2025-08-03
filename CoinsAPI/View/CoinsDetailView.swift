//
//  CoinsDetailView.swift
//  CoinsAPI
//
//  Created by Rachit Sharma on 31/07/2025.
//

import SwiftUI

struct CoinsDetailView: View {
    let coin:Coins
    
    @ObservedObject var ViewModel: DetailViewModel
    init(coin: Coins,Details:CoinsDataProtocol) {
        self.coin = coin
        ViewModel = DetailViewModel(CoinId: coin.id, Details: Details)
    }
    var body: some View {
        VStack(alignment:.leading,spacing: 10){
            if let detail = ViewModel.Coindetail{
                Text("\(detail.name)")
                    .fontWeight(.bold)
                Text(detail.description.text)
            }
        }
        .padding(.horizontal)
        .task {
           try? await  ViewModel.fetchDetail()
        }
    }
    
}

//#Preview {
  //  CoinsDetailView(coin: Coins(id: "aaa", name: "BitCoin", symbol: "Btc"))
//}

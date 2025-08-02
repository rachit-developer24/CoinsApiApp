//
//  SwiftUIView.swift
//  CoinsAPI
//
//  Created by Rachit Sharma on 31/07/2025.
//

import SwiftUI

struct CoinsView: View {
    @StateObject var ViewModel = CoinsViewModel()
    var body: some View {
        NavigationStack {
            List{
                ForEach(ViewModel.coins){coin in
                    NavigationLink(value: coin) {
                        Text(coin.name)
                    }
                    
                }
            }
            .navigationDestination(for: Coins.self) { coin in
                CoinsDetailView(coin: coin)
            }
           
        }
       
    }
}

#Preview {
    CoinsView()
}

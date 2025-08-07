//
//  SwiftUIView.swift
//  CoinsAPI
//
//  Created by Rachit Sharma on 31/07/2025.
//

import SwiftUI

struct CoinsView: View {
    private let Service:CoinsDataProtocol
    @StateObject var ViewModel:CoinsViewModel
    init(Service:CoinsDataProtocol){
        self.Service = Service
        self._ViewModel = StateObject(wrappedValue: CoinsViewModel(Service: Service))
    }
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
                CoinsDetailView(coin: coin, Details: Service)
            }
            .navigationTitle(Text("Coins"))
        }
        .overlay{
            if let error = ViewModel.errorMessage{
                Text(error)
            }
        }
       
    }
}

#Preview {
    CoinsView(Service:ServiceModel())
}

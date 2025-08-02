//
//  SwiftUIView.swift
//  CoinsAPI
//
//  Created by Rachit Sharma on 31/07/2025.
//

import SwiftUI

struct CoinsView: View {
    private let Service:ServiceModel
    @StateObject var ViewModel:CoinsViewModel
    init(Service:ServiceModel){
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
           
        }
       
    }
}

#Preview {
    CoinsView(Service: ServiceModel())
}

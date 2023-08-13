//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by Eduardo on 13/08/23.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var allcoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.allcoins.append(DeveloperPreview.instance.coin)
            self.portfolioCoins.append(DeveloperPreview.instance.coin)
        }
    }
    
}

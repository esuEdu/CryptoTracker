//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by Eduardo on 13/08/23.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    @Published var allcoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscriber()
    }
    
    func addSubscriber() {
        
        dataService.$allCoins
            .sink { (returnedCoins) in
                self.allcoins = returnedCoins
            }
            .store(in: &cancellables)
    }
}

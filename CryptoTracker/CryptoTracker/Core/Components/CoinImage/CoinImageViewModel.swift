//
//  CoinImageViewModel.swift
//  CryptoTracker
//
//  Created by Eduardo on 13/08/23.
//

import Foundation
import SwiftUI
import Combine

class CoinImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    private let coin: CoinModel
    private let  dataServices: CoinImageService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        self.dataServices = CoinImageService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        dataServices.$image
            .sink { [weak self] (_) in
                self?.isLoading = false
            } receiveValue: { [weak self] (returnedImage) in
                self?.image = returnedImage
            }
            .store(in: &cancellables)
    }
    
}

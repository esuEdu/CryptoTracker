//
//  PreviewProvider.swift
//  CryptoTracker
//
//  Created by Eduardo on 13/08/23.
//

import Foundation
import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview{
        return DeveloperPreview.instance
    }
}

class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    private init() { }
    
    let homeVM = HomeViewModel()
    
    let coin = CoinModel(id: "playdapp", symbol: "pla", name: "PlayDapp", image: "https://assets.coingecko.com/coins/images/14316/large/54023228.png?1615366911", currentPrice: 0.181847, marketCap: 101848546, marketCapRank: 251, fullyDilutedValuation: 127281438, totalVolume: 3769990, high24h: 0.18695, low24h: 0.18117, priceChange24h: -0.001484314751472843, priceChangePercentage24h: -0.80964, marketCapChange24h: -1029678.7091483474, marketCapChangePercentage24h: -1.00087, circulatingSupply: 560128667, totalSupply: 700000000, maxSupply: nil, ath: 3.74, athChangePercentage: -95.1424, athDate: "2021-10-31T01:43:56.805Z", atl: 0.093206, atlChangePercentage: 95.14376, atlDate: "2021-06-22T13:53:57.916Z", roi: nil, lastUpdated: "2023-08-13T10:49:37.636Z", sparklineIn7d: SparklineIn7d(price: [0.1782756153242319, 0.1798820223832418]), priceChangePercentage24hInCurrency: -0.8096373418494212, currentHoldings: 1.5)
}

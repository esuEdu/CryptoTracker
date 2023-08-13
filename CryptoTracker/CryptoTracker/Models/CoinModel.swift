//
//  CoinModel.swift
//  CryptoTracker
//
//  Created by Eduardo on 12/08/23.
//

import Foundation

// CoinGecko API info
/*
 Url: https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=2&sparkline=true&price_change_percentage=24h&locale=en&precision=6

JSON response
 {
   "id": "playdapp",
   "symbol": "pla",
   "name": "PlayDapp",
   "image": "https://assets.coingecko.com/coins/images/14316/large/54023228.png?1615366911",
   "current_price": 0.181847,
   "market_cap": 101848546,
   "market_cap_rank": 251,
   "fully_diluted_valuation": 127281438,
   "total_volume": 3769990,
   "high_24h": 0.18695,
   "low_24h": 0.18117,
   "price_change_24h": -0.001484314751472843,
   "price_change_percentage_24h": -0.80964,
   "market_cap_change_24h": -1029678.7091483474,
   "market_cap_change_percentage_24h": -1.00087,
   "circulating_supply": 560128667,
   "total_supply": 700000000,
   "max_supply": null,
   "ath": 3.74,
   "ath_change_percentage": -95.1424,
   "ath_date": "2021-10-31T01:43:56.805Z",
   "atl": 0.093206,
   "atl_change_percentage": 95.14376,
   "atl_date": "2021-06-22T13:53:57.916Z",
   "roi": null,
   "last_updated": "2023-08-13T10:49:37.636Z",
   "sparkline_in_7d": {
     "price": [
       0.1782756153242319,
       0.1798820223832418,
     ]
   },
   "price_change_percentage_24h_in_currency": -0.8096373418494212
 },


 */

struct CoinModel: Codable, Identifiable {
    let id: String
    let symbol: String
    let name: String
    let image: String
    let currentPrice: Double
    let marketCap: Double
    let marketCapRank: Double?
    let fullyDilutedValuation: Double
    let totalVolume: Double
    let high24h: Double
    let low24h: Double
    let priceChange24h: Double
    let priceChangePercentage24h: Double
    let marketCapChange24h: Double
    let marketCapChangePercentage24h: Double
    let circulatingSupply: Double
    let totalSupply: Double
    let maxSupply: Double?
    let ath: Double
    let athChangePercentage: Double
    let athDate: String
    let atl: Double
    let atlChangePercentage: Double
    let atlDate: String
    let roi: String?
    let lastUpdated: String
    let sparklineIn7d: SparklineIn7d
    let priceChangePercentage24hInCurrency: Double
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image, currentHoldings
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24h = "high_24h"
        case low24h = "low_24h"
        case priceChange24h = "price_change_24h"
        case priceChangePercentage24h = "price_change_percentage_24h"
        case marketCapChange24h = "market_cap_change_24h"
        case marketCapChangePercentage24h = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath, athChangePercentage, athDate, atl, atlChangePercentage, atlDate, roi
        case lastUpdated = "last_updated"
        case sparklineIn7d = "sparkline_in_7d"
        case priceChangePercentage24hInCurrency = "price_change_percentage_24h_in_currency"
    }
    
    func updateHoldings(amount: Double) -> CoinModel{
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24h: high24h, low24h: low24h, priceChange24h: priceChange24h, priceChangePercentage24h: priceChangePercentage24h, marketCapChange24h: marketCapChange24h, marketCapChangePercentage24h: marketCapChangePercentage24h, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, roi: roi, lastUpdated: lastUpdated, sparklineIn7d: sparklineIn7d, priceChangePercentage24hInCurrency: priceChangePercentage24hInCurrency, currentHoldings: amount)
    }
    
    var curentHoldingValue: Double{
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int{
        return Int(marketCapRank ?? 0)
    }
    
}

// MARK: - SparkLineIn7D
struct SparklineIn7d: Codable {
    let price: [Double]
}

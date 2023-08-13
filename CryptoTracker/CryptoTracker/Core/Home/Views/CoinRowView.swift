//
//  CoinRowView.swift
//  CryptoTracker
//
//  Created by Eduardo on 13/08/23.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    let showHoldingsColumn: Bool
    
    var body: some View {
        HStack{
            leftColumn
            Spacer()
            if showHoldingsColumn {
                centerColumn
            }
            rightColumn
        }
        .font(.subheadline)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
            CoinRowView(coin: dev.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)
    }
}

extension CoinRowView {
    
    private var leftColumn: some View {
        HStack (spacing: 0){
            Text(String(coin.rank))
                .font(.caption)
                .foregroundColor(Color.theme.secundaryText)
                .frame(minWidth: 30)
            Circle()
                .frame(width: 30, height: 30)
            Text(coin.symbol.uppercased())
                .font(.headline)
                .padding(.leading, 6)
                .foregroundColor(Color.theme.accent)
        }
    }
    
    private var centerColumn: some View {
        VStack (alignment: .trailing){
            Text(coin.curentHoldingValue.asCurrencyWith2Decimals())
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
    }
    
    private var rightColumn: some View {
        VStack(alignment: .trailing){
            Text((coin.currentPrice ?? 0).asCurrencyWith6Decimals())
                .bold()
                .foregroundColor(Color.theme.accent)
            
            Text((coin.priceChangePercentage24h ?? 0).asPercentString())
                .foregroundColor(
                    (coin.priceChangePercentage24h ?? 0) >= 0 ? Color.theme.green : Color.theme.red
                )
        }
        .frame(width: UIScreen.main.bounds.width / 3, alignment: .trailing)  // <- change to geometry reader
    }
}

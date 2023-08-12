//
//  Color.swift
//  CryptoTracker
//
//  Created by Eduardo on 12/08/23.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secundaryText = Color("SecondaryTextColor")
}

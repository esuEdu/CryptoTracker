//
//  CryptoTrackerApp.swift
//  CryptoTracker
//
//  Created by Eduardo on 12/08/23.
//

import SwiftUI

@main
struct CryptoTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}

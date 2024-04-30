//
//  ContentView.swift
//  GoogleMobileAdsDemo
//
//  Created by devonly on 2024/04/30.
//

import SwiftUI
import GoogleMobileAdsSwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(content: {
            
        })
        .overlay(alignment: .bottom, content: {
            GoogleMobileAdsView()
        })
    }
}

#Preview {
    ContentView()
}

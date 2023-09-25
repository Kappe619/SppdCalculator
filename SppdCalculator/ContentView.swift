//
//  ContentView.swift
//  SppdCalculator
//
//  Created by Britta Hamers on 25.09.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedLevel1: Int = CalculateView.defaultLevel
    @State private var selectedRarity1: Rarity = CalculateView.defaultRarity
    
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            CalculateView(selectedRarity: $selectedRarity1, selectedLevel: $selectedLevel1)
        }
        .padding()
    }
}






#Preview {
    ContentView()
}

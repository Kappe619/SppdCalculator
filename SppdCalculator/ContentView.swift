//
//  ContentView.swift
//  SppdCalculator
//
//  Created by Britta Hamers on 25.09.23.
//

import SwiftUI

struct ContentView: View {
    
    // @State private var selectedLevel1: Int = CalculateView.defaultLevel
    // @State private var selectedRarity1: Rarity = CalculateView.defaultRarity
    @State private var costs1: Int = 0
    @State private var costs2: Int = 0
    @State private var costs3: Int = 0
    @State private var costs4: Int = 0
    @State private var costs5: Int = 0
    @State private var costs6: Int = 0
    @State private var costs7: Int = 0
    @State private var costs8: Int = 0
    @State private var costs9: Int = 0
    @State private var costs10: Int = 0
    @State private var costs11: Int = 0
    @State private var costs12: Int = 0
    
    var totalCosts: Int{
        return costs1 + costs2 + costs3 + costs4 + costs5 + costs6 + costs7 + costs8 + costs9 + costs10 + costs11 + costs12
    }
    
    var body: some View {
        

            VStack {
                
                
                HStack{
                    
                    CalculateView(selectedRarity: CalculateView.defaultRarity, selectedLevel: CalculateView.defaultLevel, costs: $costs1)
                    
                    CalculateView(selectedRarity: CalculateView.defaultRarity, selectedLevel: CalculateView.defaultLevel, costs: $costs2)
                    
                    CalculateView(selectedRarity: CalculateView.defaultRarity, selectedLevel: CalculateView.defaultLevel, costs: $costs3)
                }
                
                HStack{
                    CalculateView(selectedRarity: CalculateView.defaultRarity, selectedLevel: CalculateView.defaultLevel, costs: $costs4)
                    CalculateView(selectedRarity: CalculateView.defaultRarity, selectedLevel: CalculateView.defaultLevel, costs: $costs5)
                    
                    CalculateView(selectedRarity: CalculateView.defaultRarity, selectedLevel: CalculateView.defaultLevel, costs: $costs6)
                }
                
                HStack{
                    CalculateView(selectedRarity: CalculateView.defaultRarity, selectedLevel: CalculateView.defaultLevel, costs: $costs7)
                    
                    CalculateView(selectedRarity: CalculateView.defaultRarity, selectedLevel: CalculateView.defaultLevel, costs: $costs8)
                    
                    CalculateView(selectedRarity: CalculateView.defaultRarity, selectedLevel: CalculateView.defaultLevel, costs: $costs9)
                }
                
                HStack{
                    CalculateView(selectedRarity: CalculateView.defaultRarity, selectedLevel: CalculateView.defaultLevel, costs: $costs10)
                    CalculateView(selectedRarity: CalculateView.defaultRarity, selectedLevel: CalculateView.defaultLevel, costs: $costs11)
                    CalculateView(selectedRarity: CalculateView.defaultRarity, selectedLevel: CalculateView.defaultLevel, costs: $costs12)
                }
            }
            .padding()
        }
    }


#Preview {
    ContentView()
}

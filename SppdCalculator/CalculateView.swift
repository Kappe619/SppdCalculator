//
//  CalculateView.swift
//  SppdCalculator
//
//  Created by Britta Hamers on 25.09.23.
//

import SwiftUI

struct CalculateView: View {
    
    let rarities: [Rarity] = [.Common, .Rare, .Epic, .Legendary]
    static let defaultLevel = 4
    static let defaultRarity = Rarity.Common
    
    @Binding var selectedRarity: Rarity
    @Binding var selectedLevel: Int
   
    
    var body: some View {
        VStack {
            TextEditor(text: /*@START_MENU_TOKEN@*/.constant("Placeholder")/*@END_MENU_TOKEN@*/)
            
            HStack{
                Picker("", selection: $selectedRarity){
                    ForEach(rarities, id: \.self) {rarity in Text(rarity.rawValue).tag(rarity)
                        
                    }
                }
                Stepper("", value: $selectedLevel, in: 1...7)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 20))
            }
            Text("calculated costs")
        }
    }
    
}

#Preview {
    CalculateView(selectedRarity: .constant(CalculateView.defaultRarity), selectedLevel: .constant(CalculateView.defaultLevel))
}

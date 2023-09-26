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
    static let defaultCosts = 0
    
    let commonCosts =       [0, 0, 0, 0, 100, 275, 575]
    let rareCosts =         [0, 0, 0, 125, 325, 650, 1075]
    let epicCosts =         [0, 0, 175, 425, 800, 1275, 1825]
    let legendaryCosts =    [0, 200, 475, 875, 1375, 1950, 2575]
    
    @State var selectedRarity: Rarity
    @State var selectedLevel: Int
    @Binding var costs: Int
    @State var t = ""
    
    var body: some View {
        VStack {
            TextEditor(text: $t)
            
                .textFieldStyle((RoundedBorderTextFieldStyle()))
                .frame(width: 200, height: 70)
                .font(.title)

            HStack{
                
                
                Picker("", selection: $selectedRarity){
                    ForEach(rarities, id: \.self) {rarity in Text(rarity.rawValue).tag(rarity)
                    }
                    .frame(width: 70)
                }
                Stepper("\(selectedLevel)", value: $selectedLevel, in: 1...7)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 15))
                    .onChange(of: selectedLevel) { newValue in
                        self.costs = calcCosts() }
            }
                

                .onChange(of: selectedRarity) { newValue in
                    self.costs = calcCosts() }
            Text("costs: \(costs)")
                .font(.system(size: 15))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)

        }
    }
    
    
    func calcCosts() -> Int {
        var temp = 0
        let index = selectedLevel - 1
        
        switch selectedRarity {
        case .Common:
            temp = commonCosts[index]
        case .Rare:
            temp = rareCosts[index]
        case .Epic:
            temp = epicCosts[index]
        case .Legendary:
            temp = legendaryCosts[index]
        }
        return temp
    }
    

}

//#Preview {
//    CalculateView(selectedRarity: /*.constant(CalculateView.defaultRarity), selectedLevel: .constant(CalculateView.defaultLevel),*/ costs: .constant(CalculateView.defaultCosts))
//        
//}

//
//  Rarity.swift
//  SppdCalculator
//
//  Created by Britta Hamers on 25.09.23.
//

import Foundation

public enum Rarity: String {
    case Common, Rare, Epic, Legendary
    
    var StringValue: String {
        return self.rawValue
    }
    
}

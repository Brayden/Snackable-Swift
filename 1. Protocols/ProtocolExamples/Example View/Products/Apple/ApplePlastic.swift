//
//  ApplePlastic.swift
//  ProtocolExamples
//
//  Created by Brayden Wilmoth on 11/22/19.
//  Copyright © 2019 Brayden. All rights reserved.
//

import Foundation

struct ApplePlastic: Apple {
    var displayName: String?
    var price: Double?
    var allowsDiscounts: Bool?
    
    init(displayName: String, price: Double) {
        self.displayName = displayName
        self.price = price
    }
    
    mutating func setupPurchaseable() {
        allowsDiscounts = true
    }
    
    func canEat() -> Bool {
        return false
    }
}

//
//  Purchaseable.swift
//  ProtocolExamples
//
//  Created by Brayden Wilmoth on 11/22/19.
//  Copyright © 2019 Brayden. All rights reserved.
//

import Foundation

protocol Purchaseable {
    var displayName: String? { get set }
    var price: Double? { get set }
    var allowsDiscounts: Bool? { get set }
    
    init(displayName: String, price: Double)
    func addToCart()
    mutating func setupPurchaseable()
    mutating func shouldApplyDiscount(amount: Double) -> Bool
}


extension Purchaseable {
    /// Example: Default Implementation
    ///
    /// While in the original protocol declaration you cannot create default function implementations, you can
    /// do so within a protocol extension. This is an example of how any object that adheres to `Purchaseable`
    /// can use the `addToCart()` function without having to add logic themselves in each view independently.
    func addToCart() {
        print("Add \(displayName ?? "item") to cart")
    }
    
    
    /// Example: Mutating Func
    ///
    /// In this example we show how utilizing a mutating function can allow our protocol extension to mutate
    /// the value of our `price` property. The `@discardableResult` is placed there in the use case
    /// perhaps you don't care if the result was successful or not and do not want to deal with the returned value.
    @discardableResult
    mutating func shouldApplyDiscount(amount: Double) -> Bool {
        if allowsDiscounts ?? false {
            price! -= amount
            return true
        }
        
        return false
    }
}

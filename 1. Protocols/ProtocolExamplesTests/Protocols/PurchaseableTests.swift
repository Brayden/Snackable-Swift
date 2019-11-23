//
//  PurchaseableTests.swift
//  ProtocolExamplesTests
//
//  Created by Brayden Wilmoth on 11/22/19.
//  Copyright © 2019 Brayden. All rights reserved.
//

import XCTest
@testable import ProtocolExamples

struct MockPurchaseable: Purchaseable {
    var expectation : XCTestExpectation?
    
    var displayName: String?
    var price: Double?
    var allowsDiscounts: Bool?
    
    init(displayName: String, price: Double) {
        self.displayName = displayName
        self.price = price
    }
    
    mutating func setupPurchaseable() {
        /* Empty implementation */
    }
}


class PurchaseableTests: XCTestCase {
    var mockItem = MockPurchaseable(displayName: "Test Item", price: 9.99)
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testInitialization() {
        XCTAssertNotNil(mockItem)
        XCTAssertEqual(mockItem.displayName, "Test Item")
        XCTAssertEqual(mockItem.price, 9.99)
    }
    
    func testAddToCart() {
        XCTAssert(mockItem.addToCart())
    }
    
    func testShouldApplyDiscount() {
        mockItem.allowsDiscounts = false
        XCTAssertEqual(mockItem.shouldApplyDiscount(amount: 1.00), false)
        
        mockItem.allowsDiscounts = true
        XCTAssertEqual(mockItem.shouldApplyDiscount(amount: 1.00), true)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}

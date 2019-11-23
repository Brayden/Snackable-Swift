//
//  ApplePlasticTests.swift
//  ProtocolExamplesTests
//
//  Created by Brayden Wilmoth on 11/22/19.
//  Copyright © 2019 Brayden. All rights reserved.
//

import XCTest
@testable import ProtocolExamples

class ApplePlasticTests: XCTestCase {
    var item = ApplePlastic(displayName: "Plastic", price: 1.99)
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func testSetupPurchaseable() {
        item.setupPurchaseable()
        XCTAssertTrue(item.allowsDiscounts!)
    }
    
    func testCanEat() {
        XCTAssertFalse(item.canEat())
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}

//
//  AppleGrannySmithTests.swift
//  ProtocolExamplesTests
//
//  Created by Brayden Wilmoth on 11/22/19.
//  Copyright © 2019 Brayden. All rights reserved.
//

import XCTest
@testable import ProtocolExamples

class AppleGrannySmithTests: XCTestCase {
    var item = AppleGrannySmith(displayName: "Granny Smith", price: 1.99)
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testSetupPurchaseable() {
        item.setupPurchaseable()
        XCTAssertFalse(item.allowsDiscounts!)
    }
    
    func testCanEat() {
        XCTAssertTrue(item.canEat())
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}

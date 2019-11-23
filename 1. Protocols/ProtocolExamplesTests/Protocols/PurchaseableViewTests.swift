//
//  PurchaseableViewTests.swift
//  ProtocolExamplesTests
//
//  Created by Brayden Wilmoth on 11/22/19.
//  Copyright © 2019 Brayden. All rights reserved.
//

import XCTest
@testable import ProtocolExamples

class PurchaseableViewTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    func testShowAddToCartSuccessful() {
        let expectation = XCTestExpectation(description: "testExample")
        
        let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
        let rootViewController = window?.rootViewController
        
        guard let rootVC = rootViewController as? PurchaseableView else {
            return
        }
        
        rootVC.showAddToCartSuccessful("Test message")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            XCTAssertTrue(rootViewController?.presentedViewController is UIAlertController)
            expectation.fulfill()
        })
        
        wait(for: [expectation], timeout: 2.0)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}

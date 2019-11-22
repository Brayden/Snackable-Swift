//
//  PurchaseableView.swift
//  ProtocolExamples
//
//  Created by Brayden Wilmoth on 11/22/19.
//  Copyright © 2019 Brayden. All rights reserved.
//

import Foundation
import UIKit

protocol PurchaseableView {
    func showAddToCartSuccessful(_ message: String?)
}

extension PurchaseableView where Self : UIViewController {
    /// Example: Limiting Usage to UIViewController
    ///
    /// In instances where your default implementation may require a specific object type, you can create an
    /// extension that only extends where `Self` meets specified criteria. In this example since we are
    /// showing a `UIAlertController` object on the screen we want to make sure the calling class is
    /// from a `UIViewController`, therefore we can remain certain our ability to `present` is available.
    func showAddToCartSuccessful(_ message: String? = nil) {
        let controller = UIAlertController(title: "Success", message: message ?? "Your item has been added successfully", preferredStyle: .alert)
        controller.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(controller, animated: true, completion: nil)
    }
}

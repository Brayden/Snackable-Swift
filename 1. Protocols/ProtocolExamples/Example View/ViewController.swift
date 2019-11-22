//
//  ViewController.swift
//  ProtocolExamples
//
//  Created by Brayden Wilmoth on 11/22/19.
//  Copyright © 2019 Brayden. All rights reserved.
//

import UIKit

class ViewController: UIViewController, PurchaseableView {
    private var products: [Purchaseable] = [AppleGrannySmith(displayName: "Granny Smith Apple", price: 1.99),
                                            ApplePlastic(displayName: "Plastic Teacher Apple", price: 3.99)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let current = products[indexPath.row]
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "ProductCell")
        cell.textLabel?.text = current.displayName ?? "Empty Name"
        cell.detailTextLabel?.text = "Price: $\(current.price ?? 0)"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        var message: String? = nil
        
        if let current = products[indexPath.row] as? Apple {
            message = "You can\(current.canEat() ? "" : " NOT") eat this apple"
            current.addToCart()
        }

        showAddToCartSuccessful(message)
    }
}

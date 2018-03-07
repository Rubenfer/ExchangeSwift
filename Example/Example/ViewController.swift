//
//  ViewController.swift
//  Example
//
//  Created by Ruben Fernandez on 6/3/18.
//  Copyright © 2018 Ruben Fernandez. All rights reserved.
//

import UIKit
import ExchangeSwift

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let exchange = ExchangeSwift()
        
        exchange.getExchangeRate(base: .EUR) { data in
            
            print(data)
            
            self.label.text = "\(data.date): 1EUR = \(data.rates.USD!)USD"
            
        }
        
    }

}


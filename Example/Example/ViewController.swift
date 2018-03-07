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
            
            self.label.text = "\(data.date): 1EUR = \(data.rates.USD!)USD"
            
        }
        
        // You can also get historical rates. You can see in output the rates of 1st April 2000.
        
        exchange.getHistorical(base: .EUR, day: "01", month: "04", year: "2000") { data in
            
            print("On 1st April 2000, 1EUR = \(data.rates.USD!)USD")
            print("On 1st April 2000, 5EUR = \(5*data.rates.USD!)USD")
            print("On 1st April 2000, 1EUR = \(data.rates.GBP!)GBP")
            
        }
        
    }

}


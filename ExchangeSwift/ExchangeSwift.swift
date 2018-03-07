//
//  ExchangeSwift.swift
//  ExchangeSwift
//
//  Created by Ruben Fernandez on 6/3/18.
//  Copyright © 2018 Ruben Fernandez. All rights reserved.
//
//  Data source: http://fixer.io/

import Foundation

public struct Exchange: Codable {
    
    public struct Rates: Codable {
        
        public let AUD: Float?
        public let BGN: Float?
        public let BRL: Float?
        public let CAD: Float?
        public let CHF: Float?
        public let CNY: Float?
        public let CZK: Float?
        public let DKK: Float?
        public let EUR: Float?
        public let GBP: Float?
        public let HKD: Float?
        public let HRK: Float?
        public let HUF: Float?
        public let IDR: Float?
        public let ILS: Float?
        public let INR: Float?
        public let ISK: Float?
        public let JPY: Float?
        public let KRW: Float?
        public let MXN: Float?
        public let MYR: Float?
        public let NOK: Float?
        public let NZD: Float?
        public let PHP: Float?
        public let PLN: Float?
        public let RON: Float?
        public let RUB: Float?
        public let SEK: Float?
        public let SGD: Float?
        public let THB: Float?
        public let TRY: Float?
        public let USD: Float?
        public let ZAR: Float?
        
    }
    
    public let base: String
    public let date: String
    public let rates: Rates
    
}

public class ExchangeSwift {
    
    public init() {}
    
    public enum currency {
        case AUD
        case BGN
        case BRL
        case CAD
        case CHF
        case CNY
        case CZK
        case DKK
        case EUR
        case GBP
        case HKD
        case HRK
        case HUF
        case IDR
        case ILS
        case INR
        case ISK
        case JPY
        case KRW
        case MXN
        case MYR
        case NOK
        case NZD
        case PHP
        case PLN
        case RON
        case RUB
        case SEK
        case SGD
        case THB
        case TRY
        case USD
        case ZAR
    }
    
    private func decodeJSON(_ url: URL, completionHandler: @escaping (Exchange)->()) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard let data = data else { return }
            do {
                
                let exchange = try JSONDecoder().decode(Exchange.self, from: data)
                
                DispatchQueue.main.async {
                    completionHandler(exchange)
                }
                
            } catch {
                print("ERROR")
            }
            
            }.resume()
        
    }
    
    public func getExchangeRate(base: currency, completion: @escaping (Exchange) -> () ) {
        
        var api = "https://api.fixer.io/"
        api += "latest"
        api += "?base=\(base)"
        
        decodeJSON(URL(string: api)!) { data in
            
            completion(data)
            
        }
        
        
    }
    
    public func getHistorical(base: currency, day: String, month: String, year: String, completion: @escaping (Exchange) -> () ) {
        
        var api = "https://api.fixer.io/"
        api += "\(year)-\(month)-\(day)"
        api += "?base=\(base)"
        
        decodeJSON(URL(string:api)!) { data in
            
            completion(data)
            
        }
        
    }
    
}

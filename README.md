# ExchangeSwift

[![Version](https://img.shields.io/cocoapods/v/ExchangeSwift.svg?style=flat)](http://cocoapods.org/pods/ExchangeSwift)
[![License](https://img.shields.io/cocoapods/l/ExchangeSwift.svg?style=flat)](http://cocoapods.org/pods/ExchangeSwift)
[![Platform](https://img.shields.io/cocoapods/p/ExchangeSwift.svg?style=flat)](http://cocoapods.org/pods/ExchangeSwift)



## Description
You need `ExchangeSwift` if you want to use updated exchange rate in your Swift app. ExchangeSwift update rates daily by European Central Bank. You can also see historical exchange rates since 1999.

We use [Fixer API](https://github.com/fixerAPI/fixer).

## Usage
Run the example project from the `Example` directory and check out `ViewController.swift`.

```swift
import ExchangeSwift

let exchange = ExchangeSwift()

// Last rate

exchange.getExchangeRate(base: .EUR) { (exchange) in

    // Here your code. For example:
    print("\(exchange.date): 1EUR = \(exchange.rates.USD)USD")

}

// Historical rate

exchange.getHistorical(base: .EUR, day: "12", month: "10", year: "2001") { (exchange) in

    // Now you have the exchange rates of 10/12/2001

}


```

## Data types
The return of `ExchangeSwift` is:

```swift
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

```

## Installation

`ExchangeSwift` is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your `Podfile`:

```ruby
pod 'ExchangeSwift'
```

You can also copy into your project the file `ExchangeSwift.framework`


## Requirements
iOS 8.0+ and Swift 4.0+ are required.

## Author

I'm Ruben Fernandez
Email: [ruben.fdez@icloud.com](mailto:ruben.fdez@icloud.com)
Twitter: [@RubenApps](http://twitter.com/RubenApps).

## License

`ExchangeSwift` is available under the MIT license. See the [LICENSE](LICENSE) file for more info.

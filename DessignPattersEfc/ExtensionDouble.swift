//
//  ExtensionDouble.swift
//  DessignPattersEfc
//
//  Created by eduardo fulgencio on 24/01/2020.
//  Copyright © 2020 Eduardo Fulgencio Comendeiro. All rights reserved.
//

import Foundation

extension Double {
    
    func toCurrency() -> String? {
        let currencyFormatter = NumberFormatter()
        currencyFormatter.numberStyle = .currency
        
        return currencyFormatter.string(from: NSNumber(value: self))
    }
    
}


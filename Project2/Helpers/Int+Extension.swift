//
//  Int+Extension.swift
//  Project2
//
//  Created by Prachit on 08/04/23.
//

import Foundation

extension Int {
    
    //Output will be in the string preceded by ruppe symbol with our integer value
    func withRupeeSymbol() -> String {
        return "\u{20B9}\(self)"
    }
    
    func withDmartRupeeSymbol() -> String {
        return "DMart \u{20B9}\(self)"
    }
    
    func withMrpRupeeSymbol() -> String {
        return "MRP \u{20B9}\(self)"
    }
    
    func withSaveRupeeSymbol() -> String {
        return "Save \u{20B9}\(self)"
    }
    
}

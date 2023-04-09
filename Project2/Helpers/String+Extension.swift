//
//  String+Extension.swift
//  Project2
//
//  Created by Prachit on 08/04/23.
//

import UIKit

extension String {
    
    func withRupeeSymbol() -> String {
        return "\u{20B9}" + self
    }
    
    func strikeThrough() -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        attributedString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSMakeRange(0, attributedString.length))
        return attributedString
    }
    
}

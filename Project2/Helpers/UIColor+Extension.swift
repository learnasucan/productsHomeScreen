//
//  UIColor+Extension.swift
//  Project2
//
//  Created by Prachit on 08/04/23.
//

import UIKit

extension UIColor {
    
    //Aceept rgba values
    convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0) {
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
    }
    
    //Aceept hex values
    convenience init?(hex: String, alpha: CGFloat = 1.0) {
        var hexWithoutSymbol = hex
        if hexWithoutSymbol.hasPrefix("#") {
            hexWithoutSymbol = String(hexWithoutSymbol.dropFirst())
        }
        guard hexWithoutSymbol.count == 6 else {
            return nil
        }
        var rgbValue: UInt64 = 0
        Scanner(string: hexWithoutSymbol).scanHexInt64(&rgbValue)
        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgbValue & 0x0000FF) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

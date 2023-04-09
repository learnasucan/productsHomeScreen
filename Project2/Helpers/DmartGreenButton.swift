//
//  DmartGreenButton.swift
//  Project2
//
//  Created by Prachit on 08/04/23.
//

import UIKit

class DmartGreenButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 4 {
        didSet {
            layer.cornerRadius = cornerRadius
            clipsToBounds = true
        }
    }
    
    @IBInspectable var textColor: UIColor = .white {
        didSet {
            setTitleColor(textColor, for: .normal)
        }
    }
    
    @IBInspectable var bgColor: UIColor = .white {
        didSet {
            backgroundColor = bgColor
        }
    }
    
    @IBInspectable var buttonName: String? {
        didSet {
            setTitle(buttonName, for: .normal)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    private func setupButton() {
        backgroundColor = Colors.dmartGreen
        setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 9, weight: .bold)
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.cornerRadius = cornerRadius
        clipsToBounds = true
    }
    
}

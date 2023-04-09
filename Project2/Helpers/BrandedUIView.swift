//
//  BrandedUIView.swift
//  Project2
//
//  Created by Prachit on 08/04/23.
//

import UIKit

@IBDesignable
class BrandedViewButton: UIView {
    
    @IBInspectable var bgColor: UIColor = .white {
        didSet {
            backgroundColor = bgColor
        }
    }
    
    @IBInspectable override var borderWidth: CGFloat  {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable override var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            clipsToBounds = true
        }
    }
    
    @IBInspectable var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    @IBInspectable var titleFontSize: CGFloat = 12 {
        didSet {
            titleLabel.font = UIFont.systemFont(ofSize: titleFontSize)
        }
    }
    
    @IBInspectable var titleFontColor: UIColor = .clear {
        didSet {
            titleLabel.textColor = titleFontColor
        }
    }
    
    private let titleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        backgroundColor = bgColor
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor?.cgColor
        layer.cornerRadius = cornerRadius
        clipsToBounds = true
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        titleLabel.font = UIFont.systemFont(ofSize: titleFontSize)
        titleLabel.textAlignment = .center
    }
}


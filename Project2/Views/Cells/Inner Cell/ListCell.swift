//
//  ListCell.swift
//  Project2
//
//  Created by Prachit on 07/04/23.
//

import UIKit

class ListCell: UICollectionViewCell {
    
    @IBOutlet weak var productImageView: CustomImageView!
    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var mrpLabelText: UILabel!
    @IBOutlet weak var dmartValueLabel: UILabel!
    @IBOutlet weak var saveValueLabel: UILabel!
    @IBOutlet weak var vegNonVegImageView: UIImageView!
    
    func configure(with cellData: Cell) {
        productImageView.loadImage(from: URL(string: cellData.imageUrl)!)
        productTitleLabel.text = cellData.name
        mrpLabelText.attributedText = cellData.mrpValue.withMrpRupeeSymbol().strikeThrough()
        dmartValueLabel.text = cellData.dmartValue.withDmartRupeeSymbol()
        saveValueLabel.text = cellData.saveValue.withSaveRupeeSymbol()
        vegNonVegImageView.image = cellData.veg ? UIImage(named: "veg") : UIImage(named: "non-veg")
    }
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
}

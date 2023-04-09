//
//  GridCell.swift
//  Project2
//
//  Created by Prachit on 07/04/23.
//

import UIKit

class GridCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: CustomImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    
    func configure(with cellData: Cell) {
        productImage.loadImage(from: URL(string: cellData.imageUrl)!)
        productImage.contentMode = .scaleAspectFill
        productNameLabel.text = cellData.name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}

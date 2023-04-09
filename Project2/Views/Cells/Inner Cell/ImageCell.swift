//
//  ImageCell.swift
//  Project2
//
//  Created by Prachit on 04/04/23.
//

import UIKit

class ImageCell: UICollectionViewCell {
    @IBOutlet weak var imageView: CustomImageView!
    
    func configure(with cellData: Cell) {
        imageView.loadImage(from:  URL(string: cellData.imageUrl)!)
    }
    
}

//
//  CustomTableView.swift
//  Project2
//
//  Created by Prachit on 05/04/23.
//

import UIKit

class CustomTableView: UITableView {
    
//    Adjust height as per tableview content data
    override var intrinsicContentSize: CGSize {
        self.layoutIfNeeded()
        return self.contentSize
    }
    
    override var contentSize: CGSize {
        didSet{
            self.invalidateIntrinsicContentSize()
        }
    }
    
    override func reloadData() {
        super.reloadData()
        self.invalidateIntrinsicContentSize()
    }
    
}

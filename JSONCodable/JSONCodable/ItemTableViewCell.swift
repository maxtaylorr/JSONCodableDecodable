//
//  ItemTableViewCell.swift
//  JSONCodable
//
//  Created by Max Taylor on 4/19/19.
//  Copyright © 2019 Max Taylor. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var stockLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(_ inventoryItem: InventoryItem) {
        titleLabel.sizeToFit()
        titleLabel.text = inventoryItem.title
        stockLabel.text = "Stock - " + String(inventoryItem.stockedQuantity)
        priceLabel.text = String(inventoryItem.price)
        
        if(inventoryItem.category == "Computers") {
            self.tintColor = UIColor.red
        }
        else if(inventoryItem.category == "Electronics") {
            self.tintColor = UIColor.blue
        }
        else if(inventoryItem.category == "Kitchen") {
            self.tintColor = UIColor.purple
        }
        else if(inventoryItem.category == "Pets") {
            self.tintColor = UIColor.orange
        }
    }

}

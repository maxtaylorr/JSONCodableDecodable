//
//  Inventory.swift
//  JSONCodable
//
//  Created by Max Taylor on 4/19/19.
//  Copyright © 2019 Max Taylor. All rights reserved.
//

import Foundation

struct InventorySet: Codable {
    var status: String
    var products: [InventoryItem]
    
    enum CodingKeys: String, CodingKey {
        case status
        case products
    }
}

struct InventoryItem: Codable {
    var id: Int
    var category: String
    var title: String
    var price: Double
    var stockedQuantity: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case category
        case title
        case price
        case stockedQuantity
    }
}

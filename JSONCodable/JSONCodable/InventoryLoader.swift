//
//  InventoryLoader.swift
//  JSONCodable
//
//  Created by Max Taylor on 4/19/19.
//  Copyright © 2019 Max Taylor. All rights reserved.
//

import Foundation

class InventoryItemLoader {
    
    class func load(jsonFileName: String) -> InventorySet? {
        var inventorySet: InventorySet?
        let jsonDecoder = JSONDecoder()
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            inventorySet = try? jsonDecoder.decode(InventorySet.self, from: jsonData)
        }
        return inventorySet
    }
}

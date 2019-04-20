//
//  ItemsViewController.swift
//  JSONCodable
//
//  Created by Max Taylor on 4/19/19.
//  Copyright © 2019 Max Taylor. All rights reserved.
//

import UIKit

class ItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var itemsTableView: UITableView!
    var index = 0
    var inventorySet: InventorySet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inventorySet = getJSONData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inventorySet?.products.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        
        if let cell = cell as? ItemTableViewCell {
            let item = inventorySet?.products[index]
            cell.configure(item!)
            index += 1
        }
        
        return cell
    }
    
    func getJSONData() -> InventorySet? {
        
        let jsonFileName = "inventory"
        
        if let inventorySet = InventoryItemLoader.load(jsonFileName: jsonFileName) {
            if(inventorySet.status == "ok") {
                return inventorySet
            }
        } else {
            print("Error with JSON loading!")
        }
        return nil
    }
}

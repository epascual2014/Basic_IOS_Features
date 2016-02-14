//
//  rearTableViewController.swift
//  Basic IOS Tools
//
//  Created by Edrick Pascual on 2/13/16.
//  Copyright (c) 2016 Edrick Pascual. All rights reserved.
//

import Foundation

class rearTableViewController: UITableViewController {
    
    var tableArray = [String]()
    
    override func viewDidLoad() {
        tableArray = ["Sample Menu 1","Sample Menu 2","Sample Menu 3"]
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = tableArray[indexPath.row]
        
        return cell
        
    }
    
}
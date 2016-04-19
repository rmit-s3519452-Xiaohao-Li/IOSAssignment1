//
//  ViewController.swift
//  Bank
//
//  Created by luoyiwen on 16/4/3.
//  Copyright © 2016年 luoyiwen. All rights reserved.
//

import UIKit

class AccountTableViewController: UITableViewController {
    
    var Array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Array = ["Savings","Netbank","Credit Card"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Array.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let Cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
            as UITableViewCell
        
        Cell.textLabel?.text = Array[indexPath.row]
        
        return Cell
    }
}


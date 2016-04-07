//
//  BankTableViewController.swift
//  PaySomeone
//
//  Created by Yin Liang on 16/4/7.
//  Copyright © 2016年 RMIT. All rights reserved.
//

import UIKit

class BankTableViewController: UITableViewController, UISearchResultsUpdating
{
    let bankPeople = ["Alex  Acc No.: 12345", "Billy  Acc No.: 12346", "Tom  Acc No.: 12347", "Danny  Acc No.: 12348", "Rex  Acc No.: 12349", "Will  Acc No.: 12350"]
    
    var matchPeople = [String]()
    var result : UISearchController!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.result = UISearchController(searchResultsController: nil)
        self.result.searchResultsUpdater = self
        
        self.result.dimsBackgroundDuringPresentation = false
        self.result.searchBar.sizeToFit()
        
        self.tableView.tableHeaderView = self.result.searchBar
        
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if self.result.active
        {
            return self.matchPeople.count
        }
        else
        {
            return self.bankPeople.count
        }
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell?
        
        if self.result.active
        {
            cell!.textLabel?.text = self.matchPeople[indexPath.row]
        }
        else
        {
            cell!.textLabel?.text = self.bankPeople[indexPath.row]
        }
        
        return cell!
    }
    
    func updateSearchResultsForSearchController(searchController: UISearchController)
    {
        self.matchPeople.removeAll(keepCapacity: false)
        
        let predicate = NSPredicate(format: "SELF CONTAINS[c] %@", searchController.searchBar.text!)
        
        let array = (self.bankPeople as NSArray).filteredArrayUsingPredicate(predicate)
        
        self.matchPeople = array as! [String]
        
        self.tableView.reloadData()
    }
    
}

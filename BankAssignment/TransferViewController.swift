//
//  TransferViewController.swift
//  BankAssignment
//
//  Created by Xiaohao Li on 4/04/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

import UIKit

class TransferViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var transferFromSelect: UIPickerView!
    var accountArray = ["Account 1 $"+"1000" , "Account 2 $"+"1000"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferFromSelect.delegate=self
        transferFromSelect.dataSource=self
        
        self.transferButton.enabled=false;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBOutlet weak var transferButton: UIBarButtonItem!
    
   
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return accountArray[row];
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return accountArray.count;
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
    return 1
    }
    
    

}

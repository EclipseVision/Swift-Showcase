//
//  ViewController.swift
//  TimesTable
//
//  Created by Dustin Harle on 5/6/16.
//  Copyright © 2016 Dustin Harle. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var changeTableSliderValue: UISlider!
        @IBOutlet var Table: UITableView!
    
    @IBAction func changeTableSlider(sender: AnyObject) {
        
        print(changeTableSliderValue)
        Table.reloadData()

    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timeTable = Int(changeTableSliderValue.value * 20)
        
        cell.textLabel?.text = String(timeTable * indexPath.row)
        
     return cell
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


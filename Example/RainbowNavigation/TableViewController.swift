//
//  TableViewController.swift
//  RainbowNavigation
//
//  Created by Danis on 15/11/25.
//  Copyright © 2015年 CocoaPods. All rights reserved.
//

import UIKit
import RainbowNavigation

class TableViewController: UITableViewController, LLRainbowColorSource {
    
    lazy var navigationDelegate = LLRainbowNavigationDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationDelegate.wireTo(navigationController: self.navigationController!)
        navigationController?.navigationBar.ll_setBackgroundColor(UIColor.redColor())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - ColorSource
    func ll_navigationBarInColor() -> UIColor {
        return UIColor.redColor()
    }
    func ll_navigationBarOutColor() -> UIColor {
        return UIColor.blueColor()
    }
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellReuseID", forIndexPath: indexPath)
        if indexPath.section == 0 {
            cell.textLabel?.text = "next color"
        }else if indexPath.section == 1 {
            cell.textLabel?.text = "Clear"
        }
        
        return cell
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("kSeguePushDetail", sender: self)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
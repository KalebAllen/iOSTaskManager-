//
//  ViewController.swift
//  iOSTaskManager
//
//  Created by Kaleb Allen on 10/30/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import UIKit
import UserNotifications
class ViewController: UITableViewController {
    
    var currentTask: Task?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }
    
    //function that tells how many rows the table view will need
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TaskManager.sharedInstance.getTaskCount()
    }
    //function that adds more reuseable cells
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SampleTask") as! ViewTaskTableViewCell
        
        //changes the labes to what the current task is and adds a duedate and a checked in/out lables
        let currentTask = TaskManager.sharedInstance.getTask(at: indexPath.row)
        cell.TitleLabel.text = currentTask.title
        cell.DueDate.text = currentTask.title
        cell.InOutLable.text = currentTask.title
        
        //changes the color of the checked in out lale to red for in(not complete) and green(complete)
//        if currentTask.checkIn {
//            cell.statusView.backgroundColor = UIColor .red
//        }
        return cell
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func unwindToMain(segue: UIStoryboardSegue) { }
    
}


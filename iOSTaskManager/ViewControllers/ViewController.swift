//
//  ViewController.swift
//  iOSTaskManager
//
//  Created by Kaleb Allen on 10/30/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import UIKit
import RealmSwift
import UserNotifications
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SampleTask") as! ViewTaskTableViewCell
        
        let currentTask = Task.sharedInstance.getTask(at: indexPath.row)
        cell.TitleLabel.text = currentTask.title
        cell.DueDate.text = currentTask.title
        cell.InOutLable.text = currentTask.title
        
//        if currentTask.checkedIN {
//            cell.statusView.backgroundColor =
//        }
        return cell
    }
    
    
    var currentTask = Task?.self
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    // Configure the view for the selected state
}





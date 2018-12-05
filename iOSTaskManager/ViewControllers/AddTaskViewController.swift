//
//  AddTaskViewController.swift
//  iOSTaskManager
//
//  Created by Kaleb Allen on 10/30/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import UIKit
import UserNotifications

class AddTaskViewController: UIViewController {
    @IBOutlet weak var TitleTaskTextFeild: UITextField!
    @IBOutlet weak var DiscriptionTextFeild: UITextField!
    @IBOutlet weak var SubmitButtion: UIButton!
    
    override func viewDidLoad() {
        
    }
    
    //error handling
    func showErrorAlert() {
        let alertController = UIAlertController(title: "ERROR", message: "Looks like you missed something", preferredStyle: .actionSheet)
        let closeAction = UIAlertAction(title: "Close", style: .default) {
            _ in
            self.TitleTaskTextFeild.text = ""
            self.DiscriptionTextFeild.text = ""
        }
        
        //alert action 
        alertController.addAction(closeAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    // Do any additional setup after loading the view.
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    @IBAction func AddTaskButtonTapped(_ sender: Any) {
        let task: Task = Task(title: "", taskDiscription: "", checkIn: false)
        
        guard let title = DiscriptionTextFeild.text, title.trimmingCharacters(in: .whitespaces) != "",
            let DiscriptionTextFeild = DiscriptionTextFeild.text,
            DiscriptionTextFeild.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
                print("error")
                return
        }
        
        task.title = title
        task.taskDiscription = DiscriptionTextFeild
        task.checkIn = false
        task.dueDate = Calendar.current.date(byAdding: .day, value: 14, to: Date())
        
        TaskManager.sharedInstance.addTask(task: task)
        
        print("task added")
        
        performSegue(withIdentifier: "createToMain", sender: self)
        
    }
    
    
}

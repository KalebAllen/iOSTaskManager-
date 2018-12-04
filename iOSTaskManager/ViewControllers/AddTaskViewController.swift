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
    
    //function to add a task
    func addTask(task: Task) {
        self.TitleTaskTextFeild.text = ""
        self.DiscriptionTextFeild.text = ""
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
    
    private var Task: Results<Task>!
    
    let realm = try! Task()
    
    func getTaskCount() -> Int {
        return Task.count
    }
    func getTask(at index: Int) -> Task {
        return Task![index]
    }
    
    func removeTask(at index: Int) {
        try! realm.write {
            delete(getTask(at:index))
        }
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
        let task: Task = Task(title: "", description: "", completion: false)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-YYYY"
        if TitleTaskTextFeild.text == "" {
            print("You didnt type anything in the Title")
            return
        }
        if DiscriptionTextFeild.text == "" {
            print("You neeed to describe your task")
            return
        }
        Task.name = TitleTaskTextFeild.text!
        Task.taskDescription = DiscriptionTextFeild.text!
        Task.completion = false
        Task.createdDate = DateFormatter
        
        TaskManager.sharedInstance.addTask(task: task)
        
        performSegue(withIdentifier: "createToMain", sender: self)
        
        guard let title = DiscriptionTextFeild.text, title.trimmingCharacters(in: .whitespaces) != "",
            let DiscriptionTextFeild = DiscriptionTextFeild.text,
            DiscriptionTextFeild.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
                return
        }
    }
    
    
}

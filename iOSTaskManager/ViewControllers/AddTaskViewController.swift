//
//  AddTaskViewController.swift
//  iOSTaskManager
//
//  Created by Kaleb Allen on 10/30/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import UIKit
import RealmSwift
import UserNotifications

class AddTaskViewController: UIViewController {
    @IBOutlet weak var TitleTaskTextFeild: UITextField!
    @IBOutlet weak var DiscriptionTextFeild: UITextField!
    @IBOutlet weak var SubmitButtion: UIButton!
    
//    private init(){
//        Task = realm.objects(task.self)
//    }
    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    //    var currentTask: Task!
    
    override func viewDidLoad() {
        
    }
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if let destination = segue.destination as?
    //            AddTaskViewController {
    //            destination.taskToView = currentTask
    //        }
    //    }
    func addTask(task: Task) {
        self.TitleTaskTextFeild.text = ""
        self.DiscriptionTextFeild.text = ""
    }
    
    func showErrorAlert() {
        let alertController = UIAlertController(title: "ERROR", message: "Looks like you missed something", preferredStyle: .actionSheet)
        let closeAction = UIAlertAction(title: "Close", style: .default) {
            _ in
            self.TitleTaskTextFeild.text = ""
            self.DiscriptionTextFeild.text = ""
        }
        alertController.addAction(closeAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    private var Task: Results<task>!
    
    let realm = try! Realm()
    
    func getTaskCount() -> Int {
        return Task.count
    }
    func getTask(at index: Int) -> task {
        return Task![index]
    }
    
    func removeTask(at index: Int) {
        try! realm.write {
            realm.delete(getTask(at:index))
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
        guard let title = DiscriptionTextFeild.text, title.trimmingCharacters(in: .whitespaces) != "",
            let DiscriptionTextFeild = DiscriptionTextFeild.text,
            DiscriptionTextFeild.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
                return
        }
    }
    
    
}

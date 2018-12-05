//
//  TaskManager.swift
//  iOSTaskManager
//
//  Created by Kaleb Allen on 11/1/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import Foundation
import RealmSwift
import UserNotifications

class TaskManager {
    
    static let sharedInstance = TaskManager()
    
    func getTask(at index: Int) -> Task {
        return TaskArray[index]
    }
    
    private init(){
        let taskToAdd = Task(title: "My Task", taskDiscription: "", checkIn: false)
        addTask(task: taskToAdd)
    }
    
    var TaskArray: [Task] = []
    
    func getTaskCount() -> Int {
        return TaskArray.count
    }
    func addTask(task: Task) {
        TaskArray.append(task)
    }
    func removeTask(at index: Int) {
        TaskArray.remove(at: index)
    }
    //function to tell weather or not if the task is complete or not 
    func checkInOut(at index: Int) {
        let taskForIndex = TaskArray[index]
        TaskArray[index].checkIn = !TaskArray[index].checkIn
        
        if taskForIndex.checkIn {
            taskForIndex.dueDate = nil
        } else {
            taskForIndex.dueDate = Calendar.current.date(byAdding: .day, value: 24, to: Date())
        }
        
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = taskForIndex.title
        content.body = "Hey this task is due"
        
        let trigerDate = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: taskForIndex.dueDate!)
        let trigger = UNCalendarNotificationTrigger(dateMatching: trigerDate, repeats: false)
        
        let identifier = taskForIndex.title
        let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
        
        center.add(request, withCompletionHandler: {
            Error in if let error = Error {
                print(error.localizedDescription)
            }
        })
    }
}











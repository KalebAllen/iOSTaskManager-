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
class Task {
    var tittle: String
    var discription: String
    var checkedIn = true
    
    init (tittle:String, discription:String) {
        self.tittle = tittle
        self.discription = discription
    }
//    private var TaskArray: Results<Task>!
    class Libary {
        private var TaskArray: [Task] = [Task(tittle: "🐲", discription: "Do this")]
        
    }
}















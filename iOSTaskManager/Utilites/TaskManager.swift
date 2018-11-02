//
//  TaskManager.swift
//  iOSTaskManager
//
//  Created by Kaleb Allen on 11/1/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import Foundation

class Task {
    var tittle: String
    var checkedIn = true
    
    init (tittle:String) {
        self.tittle = tittle
    }
//    private var TaskArray: Results<Task>!
    class Libary {
        private var TaskArray: [Task] = [Task(tittle: "🐲")]
        
    }
}















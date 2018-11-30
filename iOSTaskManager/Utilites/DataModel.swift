//
//  DataModel.swift
//  iOSTaskManager
//
//  Created by Kaleb Allen on 11/2/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import Foundation
import RealmSwift
import UserNotifications
//Setting up Realm pod for use

class Task: NSObject {
    var title: String
    var taskDiscription: String
    var dueDate: Date?
    var checkIn: Bool
    
    init(title: String, taskDiscription: String, checkIn: Bool) {
        self.title = title
        self.taskDiscription = taskDiscription
        self.checkIn = checkIn
    }
    
}

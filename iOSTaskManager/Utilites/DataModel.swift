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

class task: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var Taskdiscription = ""
    @objc dynamic var dueDate: Date? = nil
    @objc dynamic var checkIn: Bool = true
}

//
//  DueDate.swift
//  iOSTaskManager
//
//  Created by Kaleb Allen on 11/5/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import Foundation
func formatDate(_ date: Date) -> String {
    let dateFormatter = DateFormatter()
    
    //DateFormatter.dateStyle = .medium
    
    dateFormatter.dateFormat = "MM d, yyyy"
    
    let formatttedString = dateFormatter.string(from: date)
    return formatttedString
}

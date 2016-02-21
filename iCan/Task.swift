//
//  Task.swift
//  iCan
//
//  Created by Popov Valery on 21/02/16.
//  Copyright © 2016 complexityclass. All rights reserved.
//

import Foundation
import SwiftyJSON
import ISO8601DateFormatter

enum TaskPriority: Int {
    case Low = 0
    case Middle = 1
    case High = 2
}

struct Task: JsonSerializableType {
    
    let title: String
    let dueDate: NSDate
    let priority: TaskPriority
    
    // MARK: JsonSerializableType
    
    static func fromJson(source: [String : AnyObject]) -> Task {
        
        let json = JSON(source)
        let dateFormatter = ISO8601DateFormatter()
        
        let title = json["title"].stringValue
        let dueDate = dateFormatter.dateFromString(json["dueDate"].stringValue)
        let priority = TaskPriority(rawValue: json["priority"].intValue)
        
        return Task(title: title, dueDate: dueDate, priority: priority ?? .Low)
        
    }
    
}
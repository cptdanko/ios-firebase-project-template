//
//  AnalyticsConstants.swift
//  Firebase startup template
//
//  Created by Bhuman Soni on 9/5/19.
//  Copyright © 2019 Bhuman Soni. All rights reserved.
//

import Foundation

class AnalyticsConstants {
    struct ANALYTICS_CONSTANT {
        var id = ""
        var name = ""
        var type = ""
        
        init(id:String, name: String, type: String) {
            self.id = id
            self.name = name
            self.type = type
        }
    }
    static let SWIPE_LEFT = ANALYTICS_CONSTANT(id: "swipe_left", name: "Swipe Left", type: "Swipe")
    static let SWIPE_UP = ANALYTICS_CONSTANT(id: "swipe_up", name: "Swipe Up", type: "Swipe")
    static let SWIPE_RIGHT = ANALYTICS_CONSTANT(id: "swipe_right", name: "Swipe Right", type: "Swipe")
    static let SWIPE_DOWN = ANALYTICS_CONSTANT(id: "swipe_down", name: "Swipe Down", type: "Swipe")
    
    static let DATE_SELECTED = ANALYTICS_CONSTANT(id: "sel_Date", name: "SelectDate", type: "SelectDate")
    static let A_ADD_TASK = ANALYTICS_CONSTANT(id: "a_add_task", name: "Add Task", type: "AddTask")
}

//
//  ZTAction.swift
//  Zatoory
//
//  Created by Martin on 1/13/25.
//

import Foundation

struct ZTAction: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var title: String
    var category: ZTCategory
    var time: ZTAction.Time
    var state: ZTAction.State
    
    enum State: String, Hashable {
        case notStarted
        case doing
        case completed
    }
    
    struct Time: Hashable {
        var plannedStart: Date
        var plannedEnd: Date
        var start: Date?
        var end: Date?
    }
}


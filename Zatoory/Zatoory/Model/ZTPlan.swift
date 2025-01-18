//
//  ZTPlan.swift
//  Zatoory
//
//  Created by Martin on 1/13/25.
//

import Foundation

struct ZTPlan: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var title: String
    var category: ZTCategory
    var time: ZTPlan.Time
    var state: ZTPlan.State
    
    enum State: String, Hashable {
        case planned
        case doing
        case completed
    }
    
    struct Time: Hashable {
        var plannedStart: Date
        var plannedEnd: Date
        var start: Date?
        var end: Date?
        
        var currentProgress: CGFloat {
            let progress: CGFloat = CGFloat(Date.now.timeIntervalSince(plannedStart)) / CGFloat(plannedEnd.timeIntervalSince(plannedStart))
            return progress > 1 ? 1 : progress
        }
        
        var exceedTimeInterval: TimeInterval? {
            let timeInterval = Date.now.timeIntervalSince(plannedEnd)
            return timeInterval >= TimeInterval.zero ? timeInterval : nil
        }
    }
}


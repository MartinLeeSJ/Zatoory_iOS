//
//  Item.swift
//  Zatoory
//
//  Created by Tyrell_07 on 1/12/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}

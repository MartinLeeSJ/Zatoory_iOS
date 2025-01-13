//
//  ZTDay.swift
//  Zatoory
//
//  Created by Tyrell_07 on 1/14/25.
//

import Foundation

struct ZTDay: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var date: Date
    var actions: [ZTAction]
}

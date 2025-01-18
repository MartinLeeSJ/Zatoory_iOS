//
//  ZTColor.swift
//  Zatoory
//
//  Created by Tyrell_07 on 1/13/25.
//

import SwiftUI

enum ZTColor: String, Hashable {
   case red
   case orange
   case yellow
   case green
   case blue
   case indigo
   case purple
    
    var paired: Color {
        switch self {
        case .red: Color.ztRed
        case .orange: Color.ztOrange
        case .yellow: Color.ztYellow
        case .green: Color.ztGreen
        case .blue: Color.ztBlue
        case .indigo: Color.ztIndigo
        case .purple: Color.ztPurple
        }
    }
}

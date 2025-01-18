//
//  CustomForegroundStyle.swift
//  Zatoory
//
//  Created by Tyrell_07 on 1/18/25.
//

import SwiftUI

struct DarkerForegroundStyle: ViewModifier {
    private let color: Color
    
    init(color: Color) {
        self.color = color
    }
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(color)
            .contrast(0.5)
            .blendMode(.plusDarker)
    }
}

struct LighterForegroundStyle: ViewModifier {
    private let color: Color
    
    init(color: Color) {
        self.color = color
    }
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(color)
            .contrast(0.5)
            .blendMode(.plusLighter)
    }
}


extension View {
    func darkerForegroundStyle(_ color: Color) -> some View {
        self.modifier(DarkerForegroundStyle(color: color))
    }
    
    func lighterForegroundStyle(_ color: Color) -> some View {
        self.modifier(LighterForegroundStyle(color: color))
    }
}

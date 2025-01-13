//
//  CurrentActionCard.swift
//  Zatoory
//
//  Created by Martin on 1/13/25.
//

import SwiftUI

struct CurrentActionCard: View {
    var body: some View {
        
        VStack {
            ZStack {
                Rectangle()
                    .foregroundStyle(.red)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .foregroundStyle(.red)
                    .contrast(0.5)
                    .blendMode(.plusDarker)
            }
            
            ZStack {
                Rectangle()
                    .foregroundStyle(.blue.opacity(0.8))
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .foregroundStyle(.blue)
                    .contrast(0.7)
                    .blendMode(.plusDarker)
            }
            
            ZStack {
                Rectangle()
                    .foregroundStyle(.green.opacity(0.8))
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .foregroundStyle(.green)
                    .blendMode(.plusLighter)
            }
        }
        
    }
}

#Preview {
    CurrentActionCard()
}

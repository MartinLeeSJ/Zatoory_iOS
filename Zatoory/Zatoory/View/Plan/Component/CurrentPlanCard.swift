//
//  CurrentPlanCard.swift
//  Zatoory
//
//  Created by Martin on 1/13/25.
//

import SwiftUI

struct CurrentPlanCard: View {
    private let plan: ZTPlan
    
    init(plan: ZTPlan) {
        self.plan = plan
    }
    
    var body: some View {
        ZStack {
            plan.category.color.paired
            VStack(spacing: .zero) {
                Text(plan.category.name)
                    .font(ZTFont.light(12))
                    .darkerForegroundStyle(plan.category.color.paired)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.horizontal)
                    .padding(.top)
                HStack {
                    Text(plan.title)
                        .font(ZTFont.bold(14))
                        .darkerForegroundStyle(plan.category.color.paired)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)

                    Button {
                        
                    } label: {
                        Image(systemName: {
                            switch plan.state {
                            case .planned:"play.circle.fill"
                            case .doing:"pause.circle.fill"
                            case .completed: "pause.circle.fill"
                            }
                        }())
                            .font(.title)
                            .darkerForegroundStyle(plan.category.color.paired)
                    }
                }
                .frame(maxHeight: .infinity)
                .padding(.horizontal)

                HStack(spacing: .zero) {
                    Text(plan.time.plannedStart, format: Date.FormatStyle(date: .omitted, time: .shortened))
                       
                    Spacer()
                    Text(plan.time.plannedEnd, format: Date.FormatStyle(date: .omitted, time: .shortened))
                        
                    if  plan.time.exceedTimeInterval != nil {
                        Spacer()
                        Image(systemName: "plus")
                        Text(plan.time.plannedEnd, style: .timer)
                        
                    }
                }
                .font(ZTFont.medium(16))
                .lighterForegroundStyle(plan.category.color.paired)
                .padding(.horizontal, 8)
                
                GeometryReader { geo in
                    Rectangle()
                        .lighterForegroundStyle(plan.category.color.paired)
                    Group {
                        Rectangle()
                            .foregroundStyle(plan.category.color.paired)
                        Rectangle()
                            .darkerForegroundStyle(plan.category.color.paired)
                    }
                    .frame(width: geo.size.width * plan.time.currentProgress)
                }
                .frame(height: 5, alignment: .leading)
                
            }
        }
        .frame(maxHeight: 115)
        .clipShape(.rect(cornerRadius: 16, style: .continuous))
    }
}

#Preview {
    if let sample = ZTPlan.samples.first {
        CurrentPlanCard(plan: sample)
            .padding()
    }
        
}

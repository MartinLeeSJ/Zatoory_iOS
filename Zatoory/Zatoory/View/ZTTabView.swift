//
//  TabsView.swift
//  Zatoory
//
//  Created by Martin on 1/13/25.
//

import SwiftUI

struct ZTTabView: View {
    var body: some View {
        TabView {
            Image(systemName: "text.rectangle.page")
                .tabItem {
                    Image(systemName: "text.rectangle.page")
                    Text("tab_today_title")
                }

        
        }
    }
}

#Preview {
    ZTTabView()
}

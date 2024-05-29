//
//  ContentView.swift
//  SwiftUI_JNRL
//
//  Created by wonyoul heo on 5/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            JournalListView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
            MapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
        }
    }
}

#Preview {
    ContentView()
}

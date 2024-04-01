//
//  TabView.swift
//  Pompam
//
//  Created by hendra on 01/04/24.
//

import SwiftUI

struct PompamTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Test", systemImage: "tray")
                }
            ContentView()
                .tabItem {
                    Label("Test", systemImage: "tray")
                }
            ContentView()
                .tabItem {
                    Label("Test", systemImage: "person")
                }
        }
    }
}

#Preview {
    PompamTabView()
}

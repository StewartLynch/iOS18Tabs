//
//----------------------------------------------
// Original project: iOS18Tabs
// by  Stewart Lynch on 2024-08-05
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2024 CreaTECH Solutions. All rights reserved.

import SwiftUI

struct StartTabView: View {
    
    enum Tabs {
        case home, family, passwords, search, news, notifications
    }
    
    @State private var selection: Tabs = .home
    var body: some View {
        TabView(selection: $selection) {
            Tab("Home", systemImage: "house", value: .home) {
                VStack {
                    Text("Home view")
                    Button("Go Notifications") {
                        selection = .notifications
                    }
                }
            }
            
            Tab("Family", systemImage: "figure.and.child.holdinghands", value: .family) {
                Text("Family View")
            }
            
            Tab("Passwords", image: "security", value: .passwords) {
                Text("My secure passwords")
            }
            
            Tab(value: .search, role: .search) {
                Text("Search View")
            }
            
            Tab("News", systemImage: "newspaper", value: .news) {
                Text("News View")
            }
            
            Tab("Notifications", systemImage: "bell", value: .notifications) {
                VStack {
                    Text("Notifications View")
                    Button("Go Home") {
                        selection = .home
                    }
                }
            }
        }
    }
}

#Preview {
    StartTabView()
}

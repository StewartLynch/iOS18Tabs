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
    
    enum Tabs: String  {
        case home, family, passwords, search, news, notifications, vacations, planning, taken, actions
        
        var customizationID: String {
            "com.createchsol.myApp.\(rawValue)"
        }
    }
    
    @State private var selection: Tabs = .home
    @AppStorage("TabCustomizations")
    private var customization: TabViewCustomization
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
            .customizationID(Tabs.home.customizationID)
            .customizationBehavior(.disabled, for: .tabBar)
            
            Tab("Family", systemImage: "figure.and.child.holdinghands", value: .family) {
                Text("Family View")
            }
            .customizationID(Tabs.family.customizationID)
            
            Tab("Passwords", image: "security", value: .passwords) {
                Text("My secure passwords")
            }
            .tabPlacement(.sidebarOnly)
            .customizationID(Tabs.passwords.customizationID)
            
            Tab(value: .search, role: .search) {
                Text("Search View")
            }
            .customizationID(Tabs.search.customizationID)
            
            Tab("News", systemImage: "newspaper", value: .news) {
                Text("News View")
            }
            .customizationID(Tabs.news.customizationID)
            
            Tab("Notifications", systemImage: "bell", value: .notifications) {
                VStack {
                    Text("Notifications View")
                    Button("Go Home") {
                        selection = .home
                    }
                }
            }
            .tabPlacement(.pinned)
            .customizationID(Tabs.notifications.customizationID)
            
            TabSection("Vacations") {
                Tab("Planned", systemImage: "airplane", value: Tabs.planning) {
                    Text("Planned Vacations")
                }
                .customizationID(Tabs.planning.customizationID)
                
                Tab("Taken", systemImage: "checklist", value: .taken) {
                    Text("Taken Vacations")
                }
                .customizationID(Tabs.taken.customizationID)
            }
            .customizationID(Tabs.vacations.customizationID)
            .sectionActions {
                Button("Reset Tabs", systemImage: "arrow.trianglehead.counterclockwise.90") {
                    customization.resetSectionOrder()
                }
            }
            .customizationID(Tabs.actions.customizationID)
        }
        .tabViewStyle(.sidebarAdaptable)
        .tabViewCustomization($customization)
        .tabViewSidebarHeader {
            Label("My Stuff", systemImage: "star")
                .font(.title)
                .bold()
                .foregroundStyle(.green)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .tabViewSidebarFooter {
            Text("Enjoy your stuff")
        }
        .tabViewSidebarBottomBar {
            Button {
                
            } label: {
                Image(systemName: "envelope.fill")
                    .padding()
                    .foregroundStyle(.white)
                    .background(Circle().fill(.blue))
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
}

#Preview {
    StartTabView()
}

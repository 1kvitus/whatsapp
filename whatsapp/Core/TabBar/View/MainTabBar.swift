//
//  MainTabBar.swift
//  whatsapp
//
//  Created by choudhary kalash on 04/05/24.
//

import SwiftUI

struct MainTabBar: View {
    
  @State private var selectTab: Int = 0
    var body: some View {
        TabView {
            
            InboxView()
                .tabItem {
                    VStack {
                        Image(systemName: "bubble.fill")
                            .environment(\.symbolVariants, selectTab == 0 ? .fill : .none)
                        Text("Chats")
                            
                    }
                    .onAppear() {
                        selectTab = 0
                    }
                }
            
            
            
            Text("Updates")
                .tabItem {
                    VStack {
                        Image(systemName: "dial.low")
                            .environment(\.symbolVariants, selectTab == 0 ? .fill : .none)
                        Text("Updates")
                    }
                    .onAppear() {
                        selectTab = 0
                    }
                }
        
            Text("Communities")
                .tabItem {
                    VStack {
                        Image(systemName: "person.3")
                            .environment(\.symbolVariants, selectTab == 0 ? .fill : .none)
                        Text("Communities")
                    }
                    .onAppear() {
                        selectTab = 0
                    }
                }
            Text("Calls")
                .tabItem {
                    VStack {
                        Image(systemName: "phone")
                            .environment(\.symbolVariants, selectTab == 1 ? .fill : .none)
                        Text("Calls")
                    }
                    .onAppear() {
                        selectTab = 0
                    }
                }
                
        }
        .tint(.black)
    }
}

#Preview {
    MainTabBar()
}

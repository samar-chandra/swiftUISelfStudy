//
//  MainTabView.swift
//  InstagramTutorial
//
//  Created by Samar Chandra on 06/12/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView().tabItem {
                Image(systemName: "house")
            }
            Text("Search").tabItem {
                Image(systemName: "magnifyingglass")
            }
            Text("Upload Post").tabItem {
                Image(systemName: "plus.app")
            }
            Text("Notifications").tabItem {
                Image(systemName: "heart")
            }
            ProfileView().tabItem {
                Image(systemName: "person")
            }
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView()
}

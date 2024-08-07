//
//  ContentView.swift
//  Appetizers
//
//  Created by 陳冠甫 on 2024/8/7.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .tint(Color("brandPrimary"))
    }
}

#Preview {
    AppetizerTabView()
}

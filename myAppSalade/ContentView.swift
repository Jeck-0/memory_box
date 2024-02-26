//
//  ContentView.swift
//  myAppSalade
//
//  Created by jeck0 on 2/23/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            VegitableMenuView()
                .tabItem {
                    Image(systemName:"face.smiling")
                    Text("채소들")
                }
            
            WishListView()
                .tabItem {
                    Image(systemName: "heart" )
                    Text("찜 목록")
                }
        }
    }
}
#Preview {
    ContentView()
}

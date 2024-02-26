//
//  VegitableMenuView.swift
//  myAppSalade
//
//  Created by jeck0 on 2/23/24.
//

import SwiftUI

enum MenuMode {
    case list
    case grid
    
    var imageName: String {
        switch self {
        case .list: "list.bullet"
        case .grid: "square.grid.3x3"
        }
        
    }
}

struct VegitableMenuView: View {
    @State var menuMode: MenuMode = .list

    var body: some View {
        NavigationStack{
            VStack{
                if menuMode == .list {
                    VegitableListView(vegitables: vegitables)
                }
                else {
                    VegitableGridView(vegitables: vegitables)
                        .padding()
                }
            }
            .navigationTitle("Vegitables")
            .toolbar{
                Button("ViewMode", 
                       systemImage: menuMode == .list ? MenuMode.grid.imageName : MenuMode.list.imageName) {
                    menuMode = menuMode == .list ? .grid : .list}
            }
        }
        
        
    }
}
#Preview {
    VegitableMenuView()
}

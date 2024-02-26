//
//  VegitableListView.swift
//  myAppSalade
//
//  Created by jeck0 on 2/23/24.
//

import SwiftUI

struct VegitableListView: View {
    var vegitables: [Vegitable]
    var body: some View {
        
        List(vegitables) { menu in
            NavigationLink{
                VegitableDetailView(vegitable: menu)
            } label: {
                HStack {
                    Image(menu.image)
                        .resizable()
                        .frame(width: 70, height: 70)
                    
                    
                    VStack(alignment: .leading) {
                        Text(menu.name)
                            .font(.headline)
                        Text(menu.engName)
                            .font(.caption)
                    }
                    .padding()
                
                }
            }
        }
    }
}

#Preview {
    VegitableListView(vegitables: vegitables)
}

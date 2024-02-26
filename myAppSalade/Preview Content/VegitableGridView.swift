//
//  VegitableGridView.swift
//  myAppSalade
//
//  Created by jeck0 on 2/23/24.
//

import SwiftUI

struct VegitableGridView: View {
    var vegitables: [Vegitable]
    
    let gridColums = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: gridColums) {
                    ForEach(vegitables) { vegitable in
                        NavigationLink {
                            VegitableDetailView(vegitable: vegitable)
                        } label: {
                            VStack {
                                Image(vegitable.image, bundle: nil)
                                    .resizable()
                                    .scaledToFit()
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(Circle())
                                
                                Text(vegitable.name)
                                    .frame(height: 20)
                                    .minimumScaleFactor(0.7)
                                   
                            }
                        }
                    }
            }
        }
    }
}

#Preview {
    VegitableGridView(vegitables: vegitables)
}

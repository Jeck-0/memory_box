//
//  VegitableDetailView.swift
//  myAppSalade
//
//  Created by jeck0 on 2/23/24.
//

import SwiftUI



struct VegitableDetailView: View {
    var vegitable: Vegitable
    
    
    
    var body: some View {
        ScrollView {
            HStack{
                Spacer()
                Button(action: {
                    // 왜인지 오류가 뜨네용...   vegitable.WishToggle()
                }, label: {
                    vegitable.wish == true ? Image(systemName: "suit.heart.fill"):Image(systemName: "suit.heart")
                    }
                )
            }
            .padding(.horizontal)
            
            
            
            Image(vegitable.image)
                .padding(.horizontal)
            
            VStack{
                HStack{
                    Text(vegitable.name)
                        .font(.title)
                    Text(vegitable.engName)
                        .frame(alignment: .center)
                }
                
                HStack{
                    Text("🥬 "+vegitable.desk)
                        .foregroundStyle(.gray)
                        .padding()
                }
                
                HStack{
                    Text("❣️")
                    Text(vegitable.flavor)
                        .font(.system(size: 16))
                        .bold()
                    Text("을")
                }
                
                Text("원하는 사람들에게 추천합니다.")
                
            }
            .padding()
            
            Divider()
                .padding(.vertical, 5)
            
            
            VStack {
                Text(vegitable.name + ", 마음에 든다면?")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical,7)
                
                ScrollView(.horizontal){
                    HStack(spacing:20) {
                        ForEach(vegitable.similars, id: \.name) { item in VStack(spacing:10) {
                                Image(item.image)
                                    .resizable()
                                    .frame(width:80,height:80)
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(Circle())
                                Text(item.name)
                                .font(.caption)
                                Spacer()
                            }
                        }
                    }
                }
                
            }
            .padding()
        }
        }
    }

#Preview {
    VegitableDetailView(vegitable: vegitables[1])
}

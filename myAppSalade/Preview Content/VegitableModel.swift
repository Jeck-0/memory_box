//
//  VegitableModel.swift
//  myAppSalade
//
//  Created by jeck0 on 2/23/24.
//

import Foundation

struct SimilarVegi{
    var name: String
    var image: String
}

struct WishList : Identifiable{
    let id = UUID()
    var image: String
    var name :String
}

struct Vegitable : Identifiable{
    let id = UUID()
    var name: String
    var engName: String
    var flavor: String
    var image: String
    var desk: String
    var begin: String
    var wish: Bool = false
    var similars: [SimilarVegi]
    
    mutating func WishToggle(){
        wish.toggle()
    }
}

let cabbage = Vegitable(
    name: "양배추", engName: "cabbage",
    flavor: "쓰지만 건강한 맛 ",
    image: "양배추img",
    desk: "양배추 머리는 일반적으로 0.5 - 4 킬로그램 (1 - 9 파운드)이며, 녹색, 보라색 또는 흰색일 수 있다. 매끈 매끈하고 단단한 녹색 양배추가 가장 일반적이다.",
    begin: "지중해, 소아시아",
    similars: [
        SimilarVegi(name: "콜리플라워", image: "콜리플라워img"),
    SimilarVegi(name: "적근대", image: "적근대img"),
    SimilarVegi(name: "브로콜리", image: "브로콜리img"),
    SimilarVegi(name: "케일", image: "케일img")
    ]
)

let lettuce = Vegitable(
    name: "양상추", engName: "lettuce",
    flavor: "아삭하고 달달한 맛",
    image: "양상추img",
    desk: "양상추는 상추의 재배종으로, 양배추처럼 잎이 안으로 둥글게 말려 있는 결구성 상추이다. 결구상추라 부르기도 한다. 잎이 둥글고 넓으며,흔히 샐러드용으로 쓴다.",
    begin: "고대 이집트",
    similars: [
    SimilarVegi(name: "당근", image: "당근img"),
    SimilarVegi(name: "콜리플라워", image: "콜리플라워img"),
    SimilarVegi(name: "비트", image: "비트img"),
    SimilarVegi(name: "콜라비", image: "콜라비img")
    ]
)

let chicory = Vegitable(
    name: "치커리", engName: "chicory",
    flavor: "쓰지만 건강한 맛",
    image: "치커리img",
    desk: "뿌리는 다육질이고 길며, 줄기는 높이가 50∼150cm이고 단단하며 가지가 갈라지고 털이 있다. 뿌리에서 나온 잎은 아래쪽을 향하고 깃털 모양으로 갈라진다. 갈라진 조각은 밑 부분이 점차 좁아지고 날개와 같은 잎자루가 있으며, 끝에 달린 조각은 크고 옆에 달린 조각은 삼각형이다. 가장자리가 밋밋하며 뒷면에 털이 있다.",
    begin: "북유럽",
    similars: [SimilarVegi(name: "브로콜리", image: "브로콜리img"),
               SimilarVegi(name: "적근대", image: "적근대img"),
               SimilarVegi(name: "케일", image: "케일img"),
               SimilarVegi(name: "콜리플라워", image: "콜리플라워img")
              ]
)


var vegitables = [
    cabbage,
    lettuce,
    chicory
]

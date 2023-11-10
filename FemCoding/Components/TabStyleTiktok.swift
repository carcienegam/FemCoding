//
//  TabStyleTiktok.swift
//  FemCoding
//
//  Created by Daniela Ramos Garcia on 09/11/23.
//


import SwiftUI


class selectedmanager:ObservableObject{
    @Published var titel = ""
    @Published var selected:Tab = .post
}

struct model:Identifiable{
    var id = UUID()
    var titel : String
    var tab:Tab
}
enum Tab:String{
    case post
    case her
}
var items:[model]=[
    model(titel:"Post", tab: .post),
    model(titel:"Her", tab: .her)
]
struct TabStyleTiktok: View {
    @StateObject var vm = selectedmanager()
    var body: some View {
        VStack{
            HStack{
                ForEach(items){ item in
                    Spacer()
                    Button(action:{
                        withAnimation{
                            vm.selected = item.tab
                        }
                    },label:{
                        Text(item.titel).bold()
                            .font(.title3)
                    }
                    )
                    .foregroundColor(vm.selected == item.tab ? .black : .gray )
                    Spacer()
                }
            }
            .overlay(content:{
                HStack{
                    if vm.selected == .her{
                        Spacer()
                    }
                    Rectangle()
                        .frame(width:40, height:3)
                        .offset(y:18)
                        .foregroundColor(.accentColor) // Set the color to accent color
                    if vm.selected == .post{
                        Spacer()
                    }
                }
                .padding(.horizontal,80)
            })
        }
        .padding(.vertical,-3)
    }
}

struct TabStyleTiktok_Previews: PreviewProvider {
    static var previews: some View {
        TabStyleTiktok()
    }
}

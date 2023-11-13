//
//  TabMentoria.swift
//  FemCoding
//
//  Created by Daniela Ramos Garcia on 12/11/23.
//

import SwiftUI


class selectedmanager2:ObservableObject{
    @Published var titel = ""
    @Published var selected:Tab2 = .cond
}

struct model2:Identifiable{
    var id = UUID()
    var titel : String
    var tab2:Tab2
}
enum Tab2:String{
    case cond
    case tec
}
var items2:[model2]=[
    model2(titel:"Conductual", tab2: .cond),
    model2(titel:"Tecnica", tab2: .tec)
]
struct TabMentoria: View {
    @StateObject var vm2 = selectedmanager2()
    @Binding var showTecOnly: Bool // Added binding for showHerOnly

    var body: some View {
        VStack{
            HStack{
                ForEach(items2){ item in
                    
                    Spacer()
                    Button(action:{
                        withAnimation{
                            vm2.selected = item.tab2
                            showTecOnly = item.tab2 == .cond // Update showHerOnly based on the selected tab

                        }
                    },label:{
                        Text(item.titel).bold()
                            .font(.title3)
                    }
                    )
                    .foregroundColor(vm2.selected == item.tab2 ? .black : .gray )
                    Spacer()
                }
            }
            .overlay(content:{
                HStack{
                    if vm2.selected == .tec{
                        Spacer()
                    }
                    Rectangle()
                        .frame(width:40, height:3)
                        .offset(y:18)
                        .foregroundColor(.accentColor) // Set the color to accent color
                    if vm2.selected == .cond{
                        Spacer()
                    }
                }
                .padding(.horizontal,80)
            })
        }
        .padding(.vertical,-1)
        .padding(.bottom, 5)
    }
}

struct TabMentoria_Previews: PreviewProvider {
    static var previews: some View {
        TabMentoria(showTecOnly: .constant(false))
    }
}

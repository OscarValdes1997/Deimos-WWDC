//
//  LIstMenu.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 17/04/23.
//

import SwiftUI

struct LIstMenu: View {
    private let menu = [characters1(id: 1, avatar: Image("deimos"), description: " Personajessss"),
                        characters1(id: 2, avatar: Image("brujoc"), description: " Locaciones"),
                        characters1(id: 3, avatar: Image("deimos"), description: " Historia")]
    
    var body: some View {
            NavigationStack{
                
                ZStack{
                    //Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
                    
                    VStack{
                        List(menu, id: \.id){ characters1 in
                            
                            NavigationLink(destination:ListDetailMenu(menuList: characters1)){
                                
                                RowMenu(charactersRow: characters1)
                                
                            }
                            .listRowBackground(Color.black) // cambiar color de la lista donde das el clic
                        }
                        List(menu, id: \.id){ characters1 in
                            
                            NavigationLink(destination:ListDetailMenu(menuList: characters1)){
                                
                                RowMenu(charactersRow: characters1)
                                
                            }
                            .listRowBackground(Color.black) // cambiar color de la lista donde das el clic
                            
                        }.navigationBarTitle(Text("Menu")).navigationBarHidden(false).foregroundColor(.red)
                            .foregroundColor(Color.red)
                            .background(Color.black.opacity(0.90))
                        
                            .scrollContentBackground(.hidden)//quitar fondo de las listar
                        
                    }//.background(Color.black.opacity(0.90))//Zstack cierre
                }
        }
    }
}

struct LIstMenu_Previews: PreviewProvider {
    static var previews: some View {
        LIstMenu()
    }
}

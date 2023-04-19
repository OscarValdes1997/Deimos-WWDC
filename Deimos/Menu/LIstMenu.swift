//
//  LIstMenu.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 17/04/23.
//

import SwiftUI

struct LIstMenu: View {
    private let menu = [characters1(id: 1, avatar: Image("deimos"), description: " Characters")]

                         
    private let location = [lugares(id: 1, lugar: Image("brujoc"),titulo: "Ubication", descripcion: "Lugar del Brujo")]
    
    
    private let menu1 = [characters1(id: 2, avatar: Image("brujoc"), description: " History")]
    private let history0 = [historia(id: 1, titulo: "Historia1", descripcion: "hola master")]
    
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
                        }.navigationBarTitle(Text("Menu")).navigationBarHidden(false).foregroundColor(.red)
                            .foregroundColor(Color.red)
                            .background(Color.black.opacity(0.90))
                        
                            .scrollContentBackground(.hidden)//quitar fondo de las listar
                    
                        List(location, id: \.id){ lugares in
                            NavigationLink(destination: ListDeteilLocation(lugaresList: lugares)){
                                
                                RowLocation(lugares1: lugares)
                            }
                            .listRowBackground(Color.black) // cambiar color de la lista donde das el clic
                            
                        }.navigationBarTitle(Text("Menu")).navigationBarHidden(false).foregroundColor(.red)
                            .foregroundColor(Color.red)
                            .background(Color.black.opacity(0.90))
                        
                            .scrollContentBackground(.hidden)//quitar fondo de las listar
                        List(history0, id: \.id){ historia in
                            
                            NavigationLink(destination: ListHistory()) {
                                
                                RowHistory(RowHistory: historia)
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

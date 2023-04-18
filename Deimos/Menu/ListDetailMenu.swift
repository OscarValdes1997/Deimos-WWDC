//
//  ListDetailMenu.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 17/04/23.
//

import SwiftUI

struct ListDetailMenu: View {
    var menuList: characters1
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
                VStack{
                    VStack{
                        menuList.avatar.resizable().frame(width: 150, height: 150).clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(color: Color.red, radius: 5)
                        
                        Text(menuList.description).font(.largeTitle).foregroundColor(Color.red).shadow(color: Color.gray, radius: 5)
                        

                    }.padding()
                    
                    VStack{
                        ListPersonajes()
                    }
                }
                
            }//llave zstak
        }//llave de navecacion
    }//llave final
}//llave de estructura

struct ListDetailMenu_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailMenu(menuList: characters1(id: 1, avatar: Image(systemName: "person.fill"), description: "Hala master"))
    }
}

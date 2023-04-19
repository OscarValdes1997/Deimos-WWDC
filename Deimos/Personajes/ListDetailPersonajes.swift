//
//  ListDetailPersonajes.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 17/04/23.
//

import SwiftUI

struct ListDetailPersonajes: View {
    var personasList: personas
    var body: some View {
        
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
            
            VStack{
                personasList.avatar.resizable().frame(width: 150, height: 150).clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(color: Color.red, radius: 5)
                
                Text(personasList.titulo).font(.largeTitle).foregroundColor(Color.red).shadow(color: Color.gray, radius: 5)
                Spacer()
                Text(personasList.descripcion).foregroundColor(Color.red)
                Spacer()
            }.padding()
        }
        
    }//llave final
}//llave estructura oruncipal

struct ListDetailPersonajes_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailPersonajes(personasList: personas(id: 1, avatar: Image(systemName: "person.fill"), titulo: "Oscar",descripcion: "Informacion del personaje"))
    }
}

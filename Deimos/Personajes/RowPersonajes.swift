//
//  RowPersonajes.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 17/04/23.
//

import SwiftUI

struct RowPersonajes: View {
    var personas1 : personas
    
    var body: some View {
        ZStack{
           // Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
            HStack{
                personas1.avatar.resizable().frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.white,lineWidth: 1)
                    }.shadow(color: .white, radius: 2)//.shadow(color: .red , radius: 2)
                VStack(alignment: .leading){
                    Text(personas1.titulo)
                        .font(.title2)
                        .foregroundColor(Color.red)
                    
                } //Cierre Vstack
                Spacer()
            }//Cierre Hstack
        }//Cierre Zstack
        
        
    }//Ultima llave
    
}

struct RowPersonajes_Previews: PreviewProvider {
    static var previews: some View {
        RowPersonajes(personas1: personas(id: 1, avatar: Image(systemName: "person.fill"), titulo: "Titulo_1",descripcion: "Ingresar texto de Personajes"))
    }
}

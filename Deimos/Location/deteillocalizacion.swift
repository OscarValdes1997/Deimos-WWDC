//
//  deteillocalizacion.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 19/04/23.
//

import SwiftUI

struct deteillocalizacion: View {
    var lugaresList: lugares
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
                VStack{
                    
                    VStack{
                        lugaresList.lugar.resizable().frame(width: 150, height: 150).clipShape(Circle()).overlay(Circle().stroke(Color.black, lineWidth: 4)).shadow(color: Color.red, radius: 5)
                        
                        Text(lugaresList.titulo).font(.largeTitle).foregroundColor(Color.red).shadow(color: Color.gray, radius: 5)
                        Text(lugaresList.descripcion).foregroundColor(Color.red)
                        Spacer()
                    }.padding()
                }
            }
        }
    }
}

struct deteillocalizacion_Previews: PreviewProvider {
    static var previews: some View {
        deteillocalizacion(lugaresList: lugares(id: 1, lugar: Image(systemName: "person.fill"), titulo: "holaaaa1",descripcion: "Hola Master"))
    }
}

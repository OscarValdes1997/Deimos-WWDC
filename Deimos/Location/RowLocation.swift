//
//  RowLocation.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 17/04/23.
//

import SwiftUI

struct RowLocation: View {
    var lugares1 : lugares
    
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
            HStack{
                lugares1.lugar.resizable().frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.white,lineWidth: 1)
                    }.shadow(color: .white, radius: 2)//.shadow(color: .red , radius: 2)
                VStack(alignment: .leading){
                    Text(lugares1.titulo)
                        .font(.title2)
                        .foregroundColor(Color.red)
                    
                } //Cierre Vstack
                Spacer()
            }//Cierre Hstack
        }//Cierre Zstack
        
        
        
    }// llave del body
}//llave final estructura

struct RowLocation_Previews: PreviewProvider {
    static var previews: some View {
        RowLocation(lugares1: lugares(id: 1, lugar: Image(systemName: "person.fill"),titulo: "hola", descripcion: " Ingresa localicion"))
    }
}

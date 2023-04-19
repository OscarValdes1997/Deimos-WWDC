//
//  RowHistory.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 19/04/23.
//

import SwiftUI

struct RowHistory: View {
    var RowHistory: historia
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
            HStack{
                VStack(alignment: .leading){
                    Text(RowHistory.titulo)
                        .font(.title2)
                        .foregroundColor(Color.red)
                    
                } //Cierre Vstack
                Spacer()
            }//Cierre Hstack
        }//Cierre Zstack
        
        
        
        
    }
}

struct RowHistory_Previews: PreviewProvider {
    static var previews: some View {
        RowHistory(RowHistory: historia(id: 1, titulo: "hola master",descripcion: "historia1"))
    }
}

//
//  detallesHistoria.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 19/04/23.
//

import SwiftUI

struct detallesHistoria: View {
    private let history11 = [historia(id: 1, titulo: "historia_1", descripcion: "hecha por Oscar ")]
    var body: some View {
        NavigationStack{
            
            ZStack{
                 //Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
                
                
                List(history11, id: \.id){ historia in
                    
                    NavigationLink(destination: ListHistory()) {
                        
                        RowHistory(RowHistory: historia)
                    }
                    .listRowBackground(Color.black) // cambiar color de la lista donde das el clic
                    
                }.foregroundColor(.red)
                    .foregroundColor(Color.red)
                    .background(Color.black.opacity(0.90))
                .scrollContentBackground(.hidden)//quitar fondo de las listar
                
            }//.background(Color.black.opacity(0.90))//Zstack cierre
        }// llave del navigationStack
    }
}

struct detallesHistoria_Previews: PreviewProvider {
    static var previews: some View {
        detallesHistoria()
    }
}

//
//  ListaLocaciones.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 19/04/23.
//

import SwiftUI

struct ListaLocaciones: View {
    private let location = [lugares(id: 1, lugar: Image("brujoc"),titulo: "hola brujo", descripcion: "Lugar del Brujo")]
    var body: some View {
        NavigationStack{
            
            ZStack{
                 //Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
                
                
                List(location, id: \.id){ lugares in
                    NavigationLink(destination: ListDeteilLocation(lugaresList: lugares)) {
                        
                        RowLocation(lugares1: lugares)
                    }
                    .listRowBackground(Color.black) // cambiar color de la lista donde das el clic
                    
                }.foregroundColor(Color.red)
                    .background(Color.black.opacity(0.90))
                
                .scrollContentBackground(.hidden)//quitar fondo de las listar
                
            }//.background(Color.black.opacity(0.90))//Zstack cierre
        }// llave del navigationStack
    }
}

struct ListaLocaciones_Previews: PreviewProvider {
    static var previews: some View {
        ListaLocaciones()
    }
}

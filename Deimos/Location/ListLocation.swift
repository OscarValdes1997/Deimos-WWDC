//
//  ListLocation.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 17/04/23.
//

import SwiftUI

struct ListLocation: View {
    private let location = [lugares(id: 1, lugar: Image("brujoc"),titulo: "ROOM LITCH", descripcion: "this room is used for the rituals of ionvocacion for Deimos"),
                            lugares(id: 2, lugar: Image("calexia"),titulo: "ROOM ALEXIA", descripcion: "HERE SEVERAL RELEVANT EVENTS TAKE PLACE IN THIS PLOT, BECAUSE IT IS A POINT OF ECSTASY FOR THE STORY.")]
    var body: some View {
        NavigationStack{
            
            ZStack{
                 //Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
                
                
                List(location, id: \.id){ lugares in
                    
                    NavigationLink(destination: deteillocalizacion(lugaresList: lugares)) {
                        
                        RowLocation(lugares1: lugares)
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

struct ListLocation_Previews: PreviewProvider {
    static var previews: some View {
        ListLocation()
    }
}

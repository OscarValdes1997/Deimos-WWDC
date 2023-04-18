//
//  ListPersonajes.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 17/04/23.
//

import SwiftUI

struct ListPersonajes: View {

    private let persona = [personas(id: 1, avatar: Image("alexa"), titulo: "Alexia",descripcion: "Esta es mi historia"),
    personas(id: 2, avatar: Image("deimos"), titulo: "Deimos",descripcion: "La historia de miedo")]
    
    var body: some View {
            NavigationStack{
                
                ZStack{
                     //Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
                    
                    
                    List(persona, id: \.id){ personas in
                        
                        NavigationLink(destination: ListDetailPersonajes(personasList: personas)) {
                            
                            RowPersonajes(personas1: personas)
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

struct ListPersonajes_Previews: PreviewProvider {
    static var previews: some View {
        ListPersonajes()
    }
}

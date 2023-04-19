//
//  ListPersonajes.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 17/04/23.
//

import SwiftUI

struct ListPersonajes: View {

    private let persona = [personas(id: 1, avatar: Image("deimos"), titulo: "DEIMOS",descripcion: "He is the third most powerful demon within the circle of the Arcanum, which contains 11 shadow wraiths, each with a different power over this world.Deimos can control time with total freedom; he has the ability to lengthen or shorten it in any living being. In addition, he can move through light within the same space to take his targets."),
                           
    personas(id: 2, avatar: Image("brujo"), titulo: "LICH",descripcion: "The wizard Lich performed a ritual where he invoked eternity as his main objective. By binding his soul with a locket he was able to capture Deimos. The only demon he cared to subdue, as he had power and control over time itself."),
                           
    personas(id: 3, avatar: Image("madre"), titulo: "BEATRIZ", descripcion: "Single mother. In her 30s and pregnant with Alexa, she is diagnosed with a very dangerous degenerative disease. With no medical possibilities, she is not a candidate for any curative treatment given the great progress of her disease. She is frightened by the idea that her daughter may not even be born, she wants to take care of her and have a life with her. For that reason, and as a last action, she resorts to magic to save herself, but ignoring the dangers she may face with her daughter."),
                           
    personas(id: 4, avatar: Image("alexa"), titulo: "ALEXA", descripcion: "Alexa grew up without friends, her fear stems from loneliness. She remembers that when she was a child her mother never let the locket loose. She took care of it all the time, so much so that at times Alexa was interested in it. She wanted to touch it and look inside, but her mother wouldn't let her. Somehow she protected the locket as much as she protected Alexa")]
    
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
        }// llave del navigationStack
    }//llave del body
}// llave final

struct ListPersonajes_Previews: PreviewProvider {
    static var previews: some View {
        ListPersonajes()
    }
}

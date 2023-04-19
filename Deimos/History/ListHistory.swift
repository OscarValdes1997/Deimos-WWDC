//
//  ListHistory.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 19/04/23.
//

import SwiftUI

struct ListHistory: View {
    private let history1 = [historia(id: 1, titulo: "SINOPSIS ", descripcion: "Beatriz, a mother diagnosed with a degenerative disease, seeks to avoid death and to do so she uses a cursed locket that holds a secret linked to a demon. Years later it passes into the hands of her daughter Alexa, who must discover the truth behind the locket."),
        
    historia(id: 2, titulo: "WHY DEIMOS?", descripcion: "The name is based on the origin of a demon with power and control over time. At a certain moment, and in search of his immortality, a Lich wizard locked him inside a locket. The Lich being its only true owner. The Lich, through the locket and the power of Deimos, obtains the necessary years as long as there is another person to whom to offer the locket to consume his life imperceptibly."),
                            
                            
    historia(id: 3, titulo: "WHAT IS IT ABOUT?", descripcion: "After Beatriz was diagnosed with a degenerative disease and was not a candidate for specialized treatment, she fears for her life, but especially for the life of her daughter Alexa. Not only does she want to see her born, she also wants to be by her side and take care of her. So he takes as an alternative the possibilities that magic can offer him. That is why he goes to a wizard Lich, who gives him a locket capable of preventing his death. She will only have to wear it at all times, prevent her daughter from touching it and never open it, even when she hears the voices of Deimos, the demon captured inside the locket..."),
    historia(id: 4, titulo: " ", descripcion: " ")]
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                 //Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
                
                
                List(history1, id: \.id){ historia in
                    
                    NavigationLink(destination: deteilHistory(deteilHistory: historia)) {
                        
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

struct ListHistory_Previews: PreviewProvider {
    static var previews: some View {
        ListHistory()
    }
}

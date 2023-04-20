//
//  SwiftUIView.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 20/04/23.
//

import SwiftUI

struct SwiftUIView: View {
    @State var isModal: Bool = false
    private let menu = [characters1(id: 1, avatar: Image("deimos"), description: " Characters")]
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
                
                VStack{
                    
                   
                    RowPersonajes(personas1: personas(id: 1, avatar: Image("deimos"), titulo: "  Deimos", descripcion: "Prueba 1"))
                    
                    RowPersonajes(personas1: personas(id: 1, avatar: Image("brujo"), titulo: "  Deimos", descripcion: "Prueba 1"))
                    
                    
                    Button("INFO") {
                        
                        self.isModal = true
                    }.sheet(isPresented: $isModal, content: {
                        ListPersonajes()
                    }).offset(x: 150,y: 300)
                        .foregroundColor(.red)
                    
                    NavigationLink{
                        Error()
                    } label: {
                        Image(systemName: "arrow.right")
                            .foregroundColor(Color.red)
                            .font(.system(size: 40, weight: .bold))
                            .padding()
                            .shadow(color: .white, radius:1)
                        
                    }
                    
                    HStack{
                        
                        RowPersonajes(personas1: personas(id: 1, avatar: Image("alexa"), titulo: "  Alexa", descripcion: "Prueba 1"))
                        
                        NavigationLink{
                            
                            ListaLocaciones()
                            
                        } label: {
                            
                            Image(systemName: "person.fill")
                                .foregroundColor(Color.red)
                                .font(.system(size: 40, weight: .bold))
                                .padding()
                                .shadow(color: .white, radius:1)
                        
                        
                      
                        }.padding()
                    }
                    
                }
            }
        }
    }
    
    struct SwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            SwiftUIView()
        }
    }
}

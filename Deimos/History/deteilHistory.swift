//
//  deteilHistory.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 19/04/23.
//

import SwiftUI

struct deteilHistory: View {
    var deteilHistory: historia
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
                VStack{
                    
                    VStack{
                        Text(deteilHistory.titulo).font(.largeTitle).foregroundColor(Color.red).shadow(color: Color.gray, radius: 5)
                        Spacer()
                        Text(deteilHistory.descripcion).foregroundColor(Color.red).shadow(color: Color.gray, radius: 5)
                        Spacer()
                    }.padding()
                }
            }
        }
    }
}

struct deteilHistory_Previews: PreviewProvider {
    static var previews: some View {
        deteilHistory(deteilHistory: historia(id: 1, titulo: "hola master",descripcion: "historia1"))
    }
}

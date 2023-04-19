//
//  Error.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 19/04/23.
//

import SwiftUI

struct Error: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
            Text("Erros de Usuario y Conytraseña").foregroundColor(.red)
        }
    }
}

struct Error_Previews: PreviewProvider {
    static var previews: some View {
        Error()
    }
}

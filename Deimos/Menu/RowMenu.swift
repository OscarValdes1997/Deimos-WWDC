//
//  RowMenu.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 17/04/23.
//

import SwiftUI

struct RowMenu: View {
    var charactersRow : characters1
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
            HStack(){
                charactersRow.avatar.resizable().frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.white,lineWidth: 1)
                    }.shadow(color: .white, radius: 2)//.shadow(color: .red , radius: 2)
        
                VStack(alignment: .leading){
                    Text(charactersRow.description)
                        .font(.title2)
                        .foregroundColor(Color.red)
                }
                Spacer()
            }
            
        }//cierre de zstack
    }
}

struct RowMenu_Previews: PreviewProvider {
    static var previews: some View {
        RowMenu(charactersRow: characters1.init(id: 1, avatar: Image(systemName: "person.fill"),description: "Hola master"))
    }
}

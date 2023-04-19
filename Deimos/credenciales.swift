//
//  credenciales.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 19/04/23.
//

import SwiftUI

struct credenciales: View {
    @State var isModal: Bool = false

    var body: some View {
        
        Button("Login") {
                    self.isModal = true
                }.sheet(isPresented: $isModal, content: {
                    LoginView()
                })
    }
}

struct credenciales_Previews: PreviewProvider {
    static var previews: some View {
        credenciales()
    }
}
struct LoginView: View {
    var body: some View {
        ZStack{
            VStack{
                
         
                Text("SCRIPTWRITERS").font(.title)
                Text("Israel Ramirez Sandoval and Oscar Roberto Valdes Rodriguez")
                Text("")
                Text("")

                Text("FILM DIRECTOR").font(.title)
                Text("Israel Ramirez Sandoval")
                Text("")
                Text("")

               
                VStack{
                    Text("DEVELOPER APP").font(.title)
                    Text("Oscar Roberto Valdes Rodriguez")
                    Spacer()
                    Text("SCRIPT FINALIST IN ").font(.title)
                    HStack{
                        Image("MALLORCA").resizable().frame(width: 170 , height: 170)
                        Image("PHOENIX").resizable().frame(width: 170 , height: 170)
                    }
                }
           
                
            
            }
        }
       
    }
}

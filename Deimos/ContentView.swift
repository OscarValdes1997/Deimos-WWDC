//
//  ContentView.swift
//  Deimos
//
//  Created by Oscar Roberto Valdes Rodriguez on 17/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var email = "313227743@pcpuma.acatlan.unam.mx"
    @State var password = "Halo4cuatro@"
    
    
    @State var email_reg = "313227743@pcpuma.acatlan.unam.mx"
    @State var password_reg = "Halo4cuatro@"
    
    var body: some View {
        NavigationStack{
            ZStack{
            Color.black.edgesIgnoringSafeArea(.all)//cambiar de color en fondo
                VStack{
                    VStack{
                  
                        Text("")
                            .foregroundColor(Color.red)
                        
                        Image("portada").resizable().frame(width: 300 , height: 300).clipShape(Circle())
                            .shadow(color: .white, radius: 10)
                        Spacer()
                        Text("DEIMOS")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.red)
                            .shadow(color: .white , radius: 1)
                        Spacer()
                    }.shadow(color: .white, radius: 4)
                    
                    
                    VStack(alignment: .leading){
                        Text("Correo electronico")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                        
                        TextField("mail@Pcpuma.acatlan.unam.mx.com",text: $email)
                            .autocapitalization(.none)
                            .foregroundColor(.red)
                        Divider()
                        Text("Contraseña")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                        
                        SecureField("***********",text: $password)
                            .autocapitalization(.none)
                            .foregroundColor(.red)
                        Divider()
                        
                        NavigationLink{
                            
                            LIstMenu()
                            // mmste()
                            
                        } label: {
                            
                            Text("¿Olvidaste tu contraseña?")
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                        }
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding()
                        
                        NavigationLink{
                            
                            if (email  == email_reg && password == password_reg){
                                LIstMenu()
                            }else{
                                LIstMenu()
                                // InfoView()
                            }
                            
                        } label: {
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(Color.red)
                                .font(.system(size: 40, weight: .bold))
                                .padding()
                                .shadow(color: .white, radius:1)
                        }
                        
                    }.padding()
                }
            }//zstack
        }
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

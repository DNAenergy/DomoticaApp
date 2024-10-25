//
//  VistaLogin.swift
//  DomoticaAPP
//
//  Created by DNA.ENERGY on 02/05/24.
//

import SwiftUI

struct VistaLogin: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
                
                // Logo Azienda e descrizione
                
               
                ContentView2()
                //FORM
                
                VStack(spacing:20){
                    
                    Text("Sign In")
                        .fontWeight(.bold)
                        .padding(.top)
                    
                    // pulsante inserire indirizzo email
                    VistaInput1(text: $email, title:Image(systemName: "envelope.fill"), placeholder: "email@esempio.com")
                    // pulsante inserire password
                    VistaInput2(text: $password, title:  Image(systemName: "lock.fill"), placeholder: "enter tua password",isSecurField: true)
                    // pulsante entra
                    SettingVista()
                    
                    
                    
                    Divider()
                        .background(.white)
                        .padding()
                     Spacer()
                       
                    
                    // pulsante crea nuovo account
                    NavigationLink{
                        VistaRegistrazione() 
                            .navigationBarBackButtonHidden(true)
                    } label:{
                        ZStack{
                           Capsule()
                                .stroke(style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
                                .fill(.green)
                                .frame(width: 250,height: 30)
                            Text("Crea nuovo account")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                        }
                        
                    }
                    .padding(.bottom, 30.0)
                }
            }
        }
    }
}
#Preview {
    VistaLogin()
}

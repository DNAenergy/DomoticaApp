//
//  VistaRegistrazione.swift
//  DomoticaAPP
//
//  Created by DNA.ENERGY on 02/05/24.
//

import SwiftUI

struct VistaRegistrazione: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
     

          
            VStack{
                
           ContentView2()
            }
            
                 
        VStack(spacing:20){
            
            Text("Sign In")
                .fontWeight(.bold)
                .padding(.top)
                    VistaInput1(text: $email, title:Image(systemName: "envelope.fill"), placeholder: "email@esempio.com")
                     .autocapitalization(.none)
                     
                     VistaInput1(text: $fullname, title:Image(systemName: "person.fill"), placeholder: "scrivi il tuo nome")
                   
                     VistaInput2(text: $password, title:  Image(systemName: "lock.fill"), placeholder: " password",isSecurField: true)
                     
                     VistaInput1(text: $confirmPassword, title:Image(systemName: "lock.fill"), placeholder: "conferma password",isSecurField: true)
                  
        }
                 .padding(.horizontal)
             
        Divider()
        
        Button{
            print("log user on")
        } label:{
            ZStack{
                Capsule()
                    
                    .foregroundColor(.green)
                    .frame(width: 250,height: 30)
                    .contrast(5)
                    .grayscale(/*@START_MENU_TOKEN@*/0.50/*@END_MENU_TOKEN@*/)
                
                Text("Sign In")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                   
            }
        }
   
        
        Divider()
            .background(.white)
            .padding()
        Spacer()
        Button{
            dismiss()
        }label: {
            ZStack{
               Capsule()
                    .stroke(style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
                    .fill(.green)
                    .frame(width: 250,height: 30)
                Text("Ho già un account")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
            }
        }
        
        .padding(.bottom, 30)
    }
    
}
#Preview {
    VistaRegistrazione()
}

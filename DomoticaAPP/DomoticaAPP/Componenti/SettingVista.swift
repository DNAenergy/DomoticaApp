//
//  SettingVista.swift
//  DomoticaAPP
//
//  Created by DNA.ENERGY on 02/05/24.
//

import SwiftUI

struct SettingVista: View {
    var body: some View {
        // pulsante entra
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
    
     
    }
}

#Preview {
    SettingVista()
}

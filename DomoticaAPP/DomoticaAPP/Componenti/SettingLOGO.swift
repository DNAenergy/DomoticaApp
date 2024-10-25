//
//  SettingLOGO.swift
//  DomoticaAPP
//
//  Created by DNA.ENERGY on 02/05/24.
//

import SwiftUI

struct SettingLOGO: View {
    var body: some View {
        
        ZStack{
            //Sfondo App
        Image("piste3D")
            
            ZStack{
                // Logo Azienda
                Image("LOGO")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .padding(/*@START_MENU_TOKEN@*/[.top, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                    .frame(width: 250.0, height: 250.0)
                    .contrast(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                
                Text("di Angelini Francesco")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                    .accentColor(.green)
                    .contrast(8.0)
                    .padding([.top, .leading], 100.0)
                    .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                
                // Descrizione
             
                Text("Via Savonarola 4 Castel di Lama (AP)")
                   .font(.body)
                   .fontWeight(.bold)
                   .foregroundColor(Color.green)
                   .accentColor(.green)
                   .contrast(8)
                   .padding(.top, 200.0)
                   .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                
                Text("angelinifrancesco.dna.html@gmail.com")
                   .font(.body)
                   .fontWeight(.bold)
                   .foregroundColor(Color.green)
                   .accentColor(.green)
                   .contrast(8)
                   .padding(.top, 250.0)
                   .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
                
               Text("+393495852189     02536730449")
                   .font(.body)
                   .fontWeight(.bold)
                   .foregroundColor(Color.green)
                   .accentColor(.green)
                   .contrast(8)
                   .padding(.top, 300.0)
                   .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xLarge/*@END_MENU_TOKEN@*/)
            }

        }
            
    }
            
}
#Preview {
    SettingLOGO()
}

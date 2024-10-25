//
//  ContentView2.swift
//  DomoticaAPP
//
//  Created by DNA.ENERGY on 03/07/24.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        VStack{
            
            ZStack {
                Image("piste3D")
                  
                 
                ZStack{
                    Image("LOGO")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fill)
                        .padding(/*@START_MENU_TOKEN@*/[.top, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                        .frame(width: 250.0, height: 250.0)
                        .contrast(/*@START_MENU_TOKEN@*/7.0/*@END_MENU_TOKEN@*/)
                    
                    OutlinedTextViewRepresentable(
                        text: "di Angelini Francesco",
                        textColor: .green,
                        outlineColor: .black,
                        font: UIFont.boldSystemFont(ofSize: 18),
                        outlineWidth: 20.0
                    )
                    
                    .padding([.top, .leading], 90.0)
                    
                    
                    OutlinedTextViewRepresentable(
                        text: "Via Savonarola 4 Castel di Lama (AP)",
                        textColor: .green,
                        outlineColor: .black,
                        font: UIFont.boldSystemFont(ofSize: 18),
                        outlineWidth: 20.0
                    )
                    
                    .padding([.top,], 180.0)
                    
                    
                    OutlinedTextViewRepresentable(
                        text: "angelinifrancesco.dna.html@gmail.com",
                        textColor: .green,
                        outlineColor: .black,
                        font: UIFont.boldSystemFont(ofSize: 18),
                        outlineWidth: 20.0
                    )
                    
                    .padding([.top,], 230.0)
                    
                    
                    OutlinedTextViewRepresentable(
                        text: "+393495852189   02536730449",
                        textColor: .green,
                        outlineColor: .black,
                        font: UIFont.boldSystemFont(ofSize: 18),
                        outlineWidth: 20.0
                    )
                    
                    .padding([.top,], 280.0)
                    
                }
                .padding(.bottom, 80.0)
            }
        }
        .padding()
    }
       
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}

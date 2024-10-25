//
//  VistaInput1.swift
//  DomoticaAPP
//
//  Created by DNA.ENERGY on 02/05/24.
//
import SwiftUI



struct VistaInput1: View {
    @Binding var text: String
    let title: Image
    let placeholder: String
    var isSecurField = false
    
    var body: some View {
        Button /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/ label: {
            VStack{
                ZStack{
                    // pulsante inserire indirizzo email
                    Capsule()
                        .stroke(style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
                        .fill(.white)
                        .frame(width: 250,height: 30)
                        
                    
                    Text(title)
                        .padding(.trailing, 210.0)
                        .foregroundColor(.white)
                    
                    
                    
                    if isSecurField{
                        SecureField(placeholder,text: $text)
                            .font(.system(size: 14))
                    } else {
                        TextField(placeholder,text: $text)
                            .font(.system(size: 14))
                    }
                    
                }
                
            }
        }
        
        
        }
    }


#Preview {
    VistaInput1(text: .constant(""), title:Image(systemName: "envelope.fill")
        , placeholder: "email@esempio.com")
}


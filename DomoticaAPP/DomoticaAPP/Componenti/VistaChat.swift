//
//  VistaChat.swift
//  DomoticaAPP
//
//  Created by DNA.ENERGY on 24/06/24.
//

import SwiftUI

struct VistaChat: View {
    @State private var fullText: String = ""

    var body: some View {
        Form{
            VStack{
                ZStack{
                    
                    TextEditor(text: $fullText)
                       .foregroundColor(.white)
                       
                }
            }
        }
    }
}
#Preview {
    VistaChat()
}

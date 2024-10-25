//
//  SettingVistaFIRM.swift
//  DomoticaAPP
//
//  Created by DNA.ENERGY on 24/06/24.
//

import SwiftUI

struct SettingVistaFIRM: View {
    let imageName: String
    let title: String
    let tintColor: Color
    
    var body: some View {
        HStack(spacing: 12){
            Image(systemName: imageName)
                .imageScale(.small)
                .font(.title)
                .foregroundColor(tintColor)
            Text(title)
                .font(.subheadline)
                .foregroundColor(.gray)
                .contrast(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
        }
        
    }
}

#Preview {
    SettingVistaFIRM(imageName: "gear", title: "Versione", tintColor: Color(.systemGray ))
}

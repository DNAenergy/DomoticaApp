//
//  VistaProfilo.swift
//  DomoticaAPP
//
//  Created by DNA.ENERGY on 02/05/24.
//

import SwiftUI

struct VistaProfilo: View {
  
   
    var body: some View {
        
        List{
            Section{
                HStack{
                    Text(User.MOCK_USER.initials)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80)
                        .background(Color(.systemGray))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    VStack(alignment: .leading, spacing: 4 ){
                        Text(User.MOCK_USER.fullname)
                            .fontWeight(.semibold)
                            .padding(.top, 4 )
                        Text(User.MOCK_USER.email)
                            .font(.footnote)
                            .accentColor(.gray )
                    }
                }
            }
            Section("Generale"){
                
                HStack{
                    SettingVistaFIRM(imageName: "gear", title: "Versione", tintColor: Color(.systemGray))
               Spacer()
                      Text("1.0.0")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                       
                }
            }
            
            Section("account"){
             //   HStack{
                    Button{
                        print("Sign out")
                                   } label:{
                                   SettingVistaFIRM(imageName: "arrow.left.circle.fill", title: "Sign out", tintColor: .red )
                                       
                    }
               //     Spacer()
                    Button{
                        print("Sign out")
                                   } label:{
                                       SettingVistaFIRM(imageName: "xmark.circle.fill", title: "Delete Account ", tintColor: .red )
                    }
             //   }
                
            }
            
            
            Section("Promemoria Servizio"){
                HStack{
                    
                }
           
            }
            
            
            
            // incollare qui
            
            DisclosureGroup("Servizi") {
                HStack{
                    Text("Assistenza Tecnica")
                        .foregroundColor(.green)
                    Image(systemName: "square.and.arrow.down.fill")
                        .padding(.leading)
                }
                
                
                HStack{
                    Text("Nuovo Impianto")
                        .foregroundColor(.green)
                    Image(systemName: "square.and.arrow.down.fill")
                        .padding(.leading)
                }
                
                HStack{
                    Text("Consulenza Tecnica")
                        .foregroundColor(.green)
                    Image(systemName: "square.and.arrow.down.fill")
                        .padding(.leading)
                }
                
            }
            DisclosureGroup("Data e ora") {
                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                
            }
            
        }
        
        .padding()
    }
}
    
#Preview {
    VistaProfilo()
}

//
//  Detalhes.swift
//  ProjetoContactos
//
//  Created by Bernardo Morais on 01/07/2022.
//

import SwiftUI

struct Detalhes: View {
    
    let contacto: Contacto
    
    var body: some View {
        VStack{
        Image(contacto.imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .cornerRadius(150)
            .shadow(radius: 3)
        Text(contacto.nome)
            .font(.title)
            .fontWeight(.medium)
        Form{
            Section {
        HStack{
            Text("Telefone")
            Spacer()
            Text(contacto.nome)
                .foregroundColor(.gray)
                .font(.callout)
            VStack{
                Text("Email")
                Spacer()
                Text(contacto.Email)
                    .foregroundColor(.gray)
                    .font(.callout)
                    }
                }
                Section{
                    Button(action: {
                        print("Enviar Mensagem")
                    }) {
                        Text("Enviar Mensagem")
                    }
                    Button(action: {
                        print("Telefonar")
                    }) {
                        Text("Telefonar")
                    }
                }
            }
        }
    }
}

struct Detalhes_Previews: PreviewProvider {
    static var previews: some View {
        Detalhes(contacto: contactos[0])
            .padding(.top, 60)
    }
}
}


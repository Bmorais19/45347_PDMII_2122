//
//  ContentView.swift
//  ProjetoContactos
//
//  Created by Bernardo Morais on 01/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        NavigationView{
        List(contactos) {Contacto in
            NavigationLink(destination: Detalhes(contacto: Contacto)){
            ContactosRow(contacto: Contacto)
                }
            }
        .navigationBarTitle("Lista de Contactos")
        }
        .environment(\.colorScheme, .dark)
    }
}


struct ContactosRow: View {
    
    @State var teste = ""
    
    let contacto: Contacto
    
    var body: some View {
        NavigationView{
            VStack{
            Section(
                    header: Text("Nomes")){
                        TextField("Nome da Pessoa",text:$teste)
                            .padding()
                        Button(action: {
                            self.adicionar()
                            }, label: {
                            Text("Adicionar nome")
                                .frame(width:250 , height: 50, alignment: .center)
                                .background(Color.gray)
                                .cornerRadius(8)
                                .foregroundColor(.white)
                        })
                    HStack{
                Image(contacto.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipped()
                    .cornerRadius(50)
                    List{
                        Section(
                            header: Text("Contactos")){
                                Text(contacto.nome)
                                Text(contacto.telefone)
                            }
                    }
//                    .onDelete(perform: apagar)
//                    .onMove(perform: editar)
                    }
                }
            }
                    .navigationTitle("Lista de Contactos")
                        navigationBarItems(leading: EditButton())
              }
            }
        

/*func apagar(indexSet: IndexSet) {
    contactos.remove(atOffsets: indexSet)
    }

func editar(indices: IndexSet, newOffSets:Int) {
    contactos.move(fromOffsets: indices, toOffset: newOffSets)
}
    */    func adicionar(){
            guard !teste.trimmingCharacters(in: .whitespaces).isEmpty else{
                return
            }
            let newNome = Contacto(nome:teste,telefone: "",Email: "", imageName: "")
            contactos.append(newNome)
        }
    }
        

        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding(.top, 60)
    }
}



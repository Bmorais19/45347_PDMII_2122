//
//  Contacto.swift
//  ProjetoContactos
//
//  Created by Bernardo Morais on 01/07/2022.
//

import Foundation
import SwiftUI

struct Contacto : Identifiable{
    let nome: String
    let telefone: String
    let Email: String
    let imageName: String
    let id = UUID()
}

var contactos = [
    Contacto(nome: "Bernardo Morais", telefone: "961234567", Email: "bernardo.morais@my.istec.pt",imageName: "tuga"),
    Contacto(nome: "João Mendes", telefone: "961234568", Email: "joao.medes@my.istec.pt", imageName: "tuga"),
    Contacto(nome: "João Gonçalves", telefone: "961234569", Email: "joao.gonçalves@my.istec.pt", imageName: "canadiano"),
    Contacto(nome: "David tenda", telefone: "961234510", Email: "david.tenda@my.istec.pt", imageName: "tuga")

]


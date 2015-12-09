//
//  Pizza.swift
//  PizzaGenerator
//
//  Created by IAvilaE on 14/11/15.
//  Copyright (c) 2015 IAvilaE. All rights reserved.
//

import Foundation

class Pizza {

    // MARK: - Statics -
    
    enum Tam: String {
        case Chica = "Chica",
        Mediana = "Mediana",
        Grande = "Grande"
    }
    
    enum Masa: String {
        case Delgada = "Delgada",
        Crujiente = "Crujiente",
        Gruesa = "Gruesa"
    }
    
    enum Queso: String {
        case Mozarella = "Mozarella",
        Cheddar = "Cheddar",
        Parmesano = "Parmesano",
        SinQueso = "SinQueso"
    }
    
    struct Ingredientes {
        static let jamon = "jamon"
        static let peperoni = "peperoni"
        static let pavo = "pavo"
        static let salchicha = "salchicha"
        static let aceituna = "aceituna"
        static let cebolla = "cebolla"
        static let pimiento = "pimiento"
        static let piña = "piña"
        static let anchoa = "anchoa"
    }
    
    // MARK: - Attributes -
    
    var tamaño: Tam?
    var masa: Masa?
    var queso: Queso?
    var ingredientes: [String]?
    
}
//
//  Partidos.swift
//  PadelPrototipo
//
//  Created by Julio on 11/11/2020.
//  Copyright © 2020 Julio. All rights reserved.
//

import UIKit

class Partido {
    
    var nombre : String
    var apellidos : String
    var fecha : Date
    
    init(nombre: String, apellidos: String, fecha: Date) {
        self.nombre = nombre
        self.fecha = fecha
        self.apellidos = apellidos
    }
    
}

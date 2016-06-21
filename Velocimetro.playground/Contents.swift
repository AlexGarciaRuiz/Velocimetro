//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120

    init(velicidadInicial : Velocidades) {
        self = velicidadInicial
    }
    
    func toString() -> String {
        switch self {
        case .Apagado:
            return "Apagado"
        case .VelocidadBaja:
            return "VelocidadBaja"
        case .VelocidadMedia:
            return "VelocidadMedia"
        case .VelocidadAlta:
            return "VelocidadAlta"
        }
    }
}

class Auto {
    var velocidad : Velocidades
    
    init() {
        self.velocidad = Velocidades(velicidadInicial: Velocidades.Apagado)
    }
    
    func cambiaDeVelicidad() -> ( actual : Int, velocidadEnCadena: String)
    {
        if velocidad == .Apagado {
            velocidad = .VelocidadBaja
        } else if velocidad == .VelocidadBaja {
            velocidad = .VelocidadMedia
        } else if velocidad == .VelocidadMedia {
            velocidad = .VelocidadAlta
        } else if velocidad == .VelocidadAlta {
            velocidad = .VelocidadMedia
        }
        return (velocidad.rawValue, velocidad.toString())
    }
}

var auto = Auto()

for i in 1...20 {
    let (a, v) = auto.cambiaDeVelicidad()
    print("\(a), \(v)")
}




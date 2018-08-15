//
//  Backend.swift
//  PiedraPapel
//
//  Created by Gerardo on 15/08/18.
//  Copyright © 2018 Gerardo. All rights reserved.
//

import Foundation


enum Jugador:String{
    case piedra = "Piedra"
    case papel = "Papel"
    case tijera = "Tijera"
}
enum Estado:String{
    case gano1 = "Ganaste"
    case gano2 = "Perdiste"
    case empate = "Empate"
}

func generaJugador(numero:Int) -> Jugador{
    if numero == 1{
        return Jugador.papel
    }else if numero == 2{
        return Jugador.piedra
    }else{
       return Jugador.tijera
    }
    
}

func Juego(jugador1:Jugador, jugador2:  Jugador) -> Estado{
    if jugador1.rawValue == jugador2.rawValue{
        return Estado.empate
    }else if jugador1.rawValue == "Piedra" && jugador2.rawValue == "Tijera"{
        return Estado.gano1
    }else if jugador1.rawValue == "Piedra" && jugador2.rawValue == "Papel"{
         return Estado.gano2
    }else if jugador1.rawValue == "Papel" && jugador2.rawValue == "Tijera"{
         return Estado.gano2
    }else if jugador1.rawValue == "Papel" && jugador2.rawValue == "Piedra"{
         return Estado.gano1
    }else if jugador1.rawValue == "Tijera" && jugador2.rawValue == "Papel"{
         return Estado.gano1
    }else {
         return Estado.gano2
    }
}
func randomInt(min: Int, max:Int) -> Int {
    return min + Int(arc4random_uniform(UInt32(max - min + 1)))
}
func Emoji(jugador: Jugador) -> String{
    if jugador.rawValue == "Piedra"{
        return "👊"
    }else if jugador.rawValue == "Papel"{
        return "🖐"
    }else{
        return "✌️"
    }
}

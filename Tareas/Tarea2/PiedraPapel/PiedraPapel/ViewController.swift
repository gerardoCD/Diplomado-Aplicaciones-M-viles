//
//  ViewController.swift
//  PiedraPapel
//
//  Created by Gerardo on 15/08/18.
//  Copyright © 2018 Gerardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMaquina: UILabel!
    @IBOutlet weak var lblLetrero: UILabel!
    @IBOutlet weak var lblPiedra: UILabel!
    @IBOutlet weak var lblPapel: UILabel!
    @IBOutlet weak var lblTijera: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
  
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func gtPiedra(_ sender: UITapGestureRecognizer) {
        let numer = randomInt(min: 1,max: 3)
        let Jugador1:Jugador = Jugador.piedra
        let Jugador2:Jugador = generaJugador(numero: numer)
        let estadoJuego = Juego(jugador1: Jugador1, jugador2: Jugador2)
        if estadoJuego.rawValue == "Ganaste"{
            lblMaquina.text = Emoji(jugador: Jugador2)
            lblPiedra.text = ""
            lblPiedra.isEnabled = false
            lblTijera.text = ""
            lblTijera.isEnabled = false
            lblPapel.text = Emoji(jugador: Jugador1)
            lblPapel.isEnabled = false
            lblLetrero.text = estadoJuego.rawValue
            
        }else if estadoJuego.rawValue == "Perdiste"{
            lblMaquina.text = Emoji(jugador: Jugador2)
            lblPiedra.text = ""
            lblPiedra.isEnabled = false
            lblTijera.text = ""
            lblTijera.isEnabled = false
            lblPapel.text = Emoji(jugador: Jugador1)
            lblPapel.isEnabled = false
            lblLetrero.text = estadoJuego.rawValue
        }else{
            lblMaquina.text = Emoji(jugador: Jugador2)
            lblPiedra.text = ""
            lblPiedra.isEnabled = false
            lblTijera.text = ""
            lblTijera.isEnabled = false
            lblPapel.text = Emoji(jugador: Jugador1)
            lblPapel.isEnabled = false
            lblLetrero.text = estadoJuego.rawValue
        }
    }
    @IBAction func gtPapel(_ sender: UITapGestureRecognizer) {
        let numer = randomInt(min: 1,max: 3)
        let Jugador1:Jugador = Jugador.papel
        let Jugador2:Jugador = generaJugador(numero: numer)
        let estadoJuego = Juego(jugador1: Jugador1, jugador2: Jugador2)
        if estadoJuego.rawValue == "Ganaste"{
            lblMaquina.text = Emoji(jugador: Jugador2)
            lblPiedra.text = ""
            lblPiedra.isEnabled = false
            lblTijera.text = ""
            lblTijera.isEnabled = false
            lblPapel.text = Emoji(jugador: Jugador1)
            lblPapel.isEnabled = false
            lblLetrero.text = estadoJuego.rawValue
            
        }else if estadoJuego.rawValue == "Perdiste"{
            lblMaquina.text = Emoji(jugador: Jugador2)
            lblPiedra.text = ""
            lblPiedra.isEnabled = false
            lblTijera.text = ""
            lblTijera.isEnabled = false
            lblPapel.text = Emoji(jugador: Jugador1)
            lblPapel.isEnabled = false
            lblLetrero.text = estadoJuego.rawValue
        }else{
            lblMaquina.text = Emoji(jugador: Jugador2)
            lblPiedra.text = ""
            lblPiedra.isEnabled = false
            lblTijera.text = ""
            lblTijera.isEnabled = false
            lblPapel.text = Emoji(jugador: Jugador1)
            lblPapel.isEnabled = false
            lblLetrero.text = estadoJuego.rawValue
        }

        
    }
    @IBAction func gtTijera(_ sender: UITapGestureRecognizer) {
        let numer = randomInt(min: 1,max: 3)
        let Jugador1:Jugador = Jugador.tijera
        let Jugador2:Jugador = generaJugador(numero: numer)
        let estadoJuego = Juego(jugador1: Jugador1, jugador2: Jugador2)
        if estadoJuego.rawValue == "Ganaste"{
            lblMaquina.text = Emoji(jugador: Jugador2)
            lblPiedra.text = ""
            lblPiedra.isEnabled = false
            lblTijera.text = ""
            lblTijera.isEnabled = false
            lblPapel.text = Emoji(jugador: Jugador1)
            lblPapel.isEnabled = false
            lblLetrero.text = estadoJuego.rawValue
            
        }else if estadoJuego.rawValue == "Perdiste"{
            lblMaquina.text = Emoji(jugador: Jugador2)
            lblPiedra.text = ""
            lblPiedra.isEnabled = false
            lblTijera.text = ""
            lblTijera.isEnabled = false
            lblPapel.text = Emoji(jugador: Jugador1)
            lblPapel.isEnabled = false
            lblLetrero.text = estadoJuego.rawValue
        }else{
            lblMaquina.text = Emoji(jugador: Jugador2)
            lblPiedra.text = ""
            lblPiedra.isEnabled = false
            lblTijera.text = ""
            lblTijera.isEnabled = false
            lblPapel.text = Emoji(jugador: Jugador1)
            lblPapel.isEnabled = false
            lblLetrero.text = estadoJuego.rawValue
        }

    }
    @IBAction func btnPlay(_ sender: UIButton) {
        lblLetrero.text = "Piedra, Papel o Tijera"
        lblMaquina.text = "🤖"
        lblPiedra.text = "👊"
        lblPapel.text = "🖐"
        lblTijera.text = "✌️"
    }
    
    
}


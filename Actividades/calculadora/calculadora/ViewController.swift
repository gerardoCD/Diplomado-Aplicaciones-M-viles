//
//  ViewController.swift
//  calculadora
//
//  Created by Gerardo Castillo on 18/08/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var cadena = ""
    @IBOutlet weak var lblPantalla: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ImprimePantalla(_ sender: UIButton) {
        cadena += sender.currentTitle!
        lblPantalla.text = cadena
        
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        cadena = ""
        lblPantalla.text = cadena
    }
    

}


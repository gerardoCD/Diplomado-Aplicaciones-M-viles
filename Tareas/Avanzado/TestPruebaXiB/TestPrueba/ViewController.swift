//
//  ViewController.swift
//  TestPrueba
//
//  Created by Gerardo Castillo on 11/9/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func btnLogIn(_ sender: Any) {
        let username = txtUser.text
        let password = txtPass.text
        if User.login(user: username!, password: password!){
            performSegue(withIdentifier: "loginSucees", sender: self)
        }
        
    }
    
    
}


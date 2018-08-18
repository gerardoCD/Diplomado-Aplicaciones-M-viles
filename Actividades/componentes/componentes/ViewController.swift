//
//  ViewController.swift
//  componentes
//
//  Created by Gerardo Castillo on 18/08/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        if sender.value > 0.7 && sender.value < 1 {
            foto.image = UIImage(named: "ferrari")
        } else if sender.value > 0.3 && sender.value < 0.7 {
            foto.image = UIImage(named: "corvet")
        }else if sender.value > 0.0 && sender.value < 0.3 {
            foto.image = UIImage(named: "cruze" )
        }
    }
    


}


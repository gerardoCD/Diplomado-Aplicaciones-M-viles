//
//  Session.swift
//  TestPrueba
//
//  Created by Gerardo Castillo on 11/9/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import Foundation

class Sesion: NSObject{
    var token: String?
    static let sharedInstante = Sesion()
    override private init() {
        super.init()
    }
    
    func saveSession(){
        token = "1234567890"
    }
}


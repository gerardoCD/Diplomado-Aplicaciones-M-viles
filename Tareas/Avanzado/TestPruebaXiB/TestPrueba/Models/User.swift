//
//  User.swift
//  TestPrueba
//
//  Created by Gerardo Castillo on 11/9/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import Foundation
class User {
    static let userName = "iosGer"
    static let password = "1q2w3e4r"
    static let session = Sesion.sharedInstante
    static func login(user:String, password:String) -> Bool{
        if (self.userName == user && self.password == password){
            session.saveSession()
            return true
        }
        return false
    }
    
    
    static func fetchSongs() throws{
        guard let token = Sesion.sharedInstante.token else{
            throw UserError.notSessionAvailable
        }
        debugPrint(token)
    }
    
    
    
    enum UserError: Error {
        case notSessionAvailable
    }
    
    
}

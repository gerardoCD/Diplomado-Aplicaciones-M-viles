//
//  ControllerSong.swift
//  MusicSongsAlamofire
//
//  Created by Gerardo on 11/14/18.
//  Copyright © 2018 Gerardo. All rights reserved.
//

import Foundation
import Alamofire

enum typeData {
    case jsonResponsive
    case trackName
    case StringAll
}

func sendRequestRequest(typeData: typeData){
        // Add URL parameters
        var songs:[String] = []
        let urlParams = [
            "media":"music",
            "entity":"song",
            "term":"TheBeatles",
            ]
    
        
        // Fetch Request
        Alamofire.request("https://itunes.apple.com/search", method: .get, parameters: urlParams)
            .validate(statusCode: 200..<300)
            .responseJSON  { response  in
                if (response.result.error == nil) {
                    switch typeData{
                    case .StringAll:
                        if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                            print("Data: \(utf8Text)") // original server data as UTF8 string
                        }
                    case .jsonResponsive:
                        if let json = response.result.value {
                            print("JSON: \(json)") // serialized json response
                        }
                        
                    case .trackName:
                        if let data = response.data , let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any] , let rows = json?["results"] as? [[String: Any]]{
                            for item in rows{
                                for item2 in item{
                                    if item2.key == "trackName"{
                                        songs.append(item2.value as! String)
                                    }
                                }
                            }
                            UserDefaults.standard.set(songs, forKey: "songs")
                           
                           
                        }
                        
                        
                    }
                    
                }
                
                
        }
   
    
    }

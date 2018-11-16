//
//  ViewController.swift
//  MusicSongsAlamofire
//
//  Created by Gerardo on 11/14/18.
//  Copyright © 2018 Gerardo. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    var songs:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sendRequestRequest(typeData: .trackName)
        if let songs = UserDefaults.standard.array(forKey: "songs"){
            self.songs = songs as! [String]
        }
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return
            songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = songs[indexPath.row]
        return cell
    }
    
    
    
}


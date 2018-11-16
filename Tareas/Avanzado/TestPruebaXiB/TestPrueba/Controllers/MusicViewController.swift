//
//  MusicViewController.swift
//  TestPrueba
//
//  Created by Gerardo Castillo on 11/10/18.
//  Copyright © 2018 GerardoCastillo. All rights reserved.
//

import UIKit

class MusicViewController: UIViewController {
    var songs:[Song] = []
    @IBOutlet weak var tableView: UITableView!
    let searchController = UISearchController(searchResultsController: nil)
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadSongs()
        setupSearchBar()
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "TableViewCellXiB", bundle: nil), forCellReuseIdentifier: "TableViewCellXiB")
    }
    

    func downloadSongs(){
        Music.fetchSongs { (result: [Song]) in
            self.songs = result
            DispatchQueue.main.async {
                 self.tableView.reloadData()
            }
           
        }
    }
    
    func downloadSongByName(name: String){
        Music.fetchSongs { (result: [Song]) in
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }

        }
    }
    
    func setupSearchBar(){
      //  downloadSongByName(name: searchController.searchBar.text!)
        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = "Search Songs"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        
    }

}
extension MusicViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellXiB", for: indexPath) as! TableViewCellXiB
        cell.lblNameSong.text = songs[indexPath.row].name
        return cell
    }
    
    
}

extension MusicViewController: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        Music.fetchSongs { (songs) in
            
        }
    }
    
    
}

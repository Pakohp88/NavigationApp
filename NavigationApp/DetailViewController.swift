//
//  DetailViewController.swift
//  NavigationApp
//
//  Created by Francisco Hernandez on 02/09/22.
//

import UIKit

class DetailViewController: UIViewController {

    var generoRecibido = String()
    let movieDataManager = MovieDataManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieDataManager.fetch(genres: generoRecibido)
        print(movieDataManager.movies)
    }
    
    @IBAction func viewMoreButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "viewMoreSegue", sender: Self.self)
    }

}
